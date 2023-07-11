# Generated automatically. See README before editing.

#' Collection By Short Title
#'
#' Return the **single collection with this short title**. *For published datasets.* ⚠️ DO NOT MODIFY BEHAVIOR ⚠️
#'
#' @param q string; Search by **exact** short title.
#'
#' @export
collection_by_short_title <- function(q) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/collections/by_short_title"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
