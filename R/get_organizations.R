# Generated automatically. See README before editing.

#' Get Organizations
#'
#' **Search for organizations.**
#'
#' @param ids string; String containing the list of one or more id separated by non-num char. **If several ids are provided**, one full info is returned per user.
#'
#' @export
get_organizations <- function(ids = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/organizations", query_string(ids = ids))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
