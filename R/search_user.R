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
    httr2::request(base_url = paste0(api_url(), "/users/search", query_string(by_name = by_name))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
