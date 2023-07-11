# Generated automatically. See README before editing.

#' Search User
#'
#' **Search users using various criteria**, search is case-insensitive and might contain % chars.
#'
#' @param by_name string; Search by name, use % for searching with 'any char'.
#'
#' @export
search_user <- function(by_name = NULL) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/users/search", query_string(by_name = by_name)),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
