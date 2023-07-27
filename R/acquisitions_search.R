# Generated automatically. See README before editing.

#' Acquisitions Search
#'
#' Returns the **list of all acquisitions for a given project**.
#'
#' @param project_id integer; The project id.
#'
#' @export
acquisitions_search <- function(project_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/acquisitions/search", query_string(project_id = project_id))) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
