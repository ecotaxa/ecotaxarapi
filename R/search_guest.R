# Generated automatically. See README before editing.

#' Search Guest
#'
#' **Search guests using various criteria**, search is case-insensitive and might contain % chars.
#'
#' @param by_name string; Search by name, use % for searching with 'any char'.
#'
#' @export
search_guest <- function(by_name = NULL) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "guests", "search") %>%
      httr2::req_url_query(by_name = by_name) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
