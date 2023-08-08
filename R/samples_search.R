# Generated automatically. See README before editing.

#' Samples Search
#'
#' **Search for samples.**
#'
#' @param project_ids string; String containing the list of one or more project id separated by non-num char.
#' @param id_pattern string; Sample id textual pattern. Use * or '' for 'any matches'. Match is case-insensitive.
#'
#' @export
samples_search <- function(project_ids, id_pattern) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/samples/search", query_string(project_ids = project_ids, id_pattern = id_pattern))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
