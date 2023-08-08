# Generated automatically. See README before editing.

#' Reset Object Set To Predicted
#'
#' **Reset to Predicted** all objects for the given project with the filters. Return **NULL upon success.**
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param ProjectFilters Output of ProjectFilters(); How to reduce project data.
#'
#' @export
reset_object_set_to_predicted <- function(project_id, ProjectFilters) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/reset_to_predicted")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ProjectFilters) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
