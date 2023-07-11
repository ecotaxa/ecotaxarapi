# Generated automatically. See README before editing.

#' Search Collections
#'
#' **Search for collections.** 🔒 *For admins only.*
#'
#' @param title string; Search by title, use % for searching with 'any char'.
#'
#' @export
search_collections <- function(title) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/collections/search"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
