# Generated automatically. See README before editing.

#' Collection Aggregated Projects Properties
#'
#' **returns projectset calculated selected fields values projects and list of rejected projects id. Note: 'manage' right is required on all underlying projects.
#'
#' @param project_ids string; String containing the list of one or more project id separated by non-num char. .
#'
#' @export
collection_aggregated_projects_properties <- function(project_ids) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/aggregated_projects_properties", query_string(project_ids = project_ids))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
