# Generated automatically. See README before editing.

#' Update Project
#'
#' **Update the project**, return **NULL upon success.** Note that some fields will **NOT** be updated and simply ignored, e.g. *free_cols*.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param ProjectModel Output of [ProjectModel()]; Basic and computed information about the Project.
#'
#' @export
update_project <- function(project_id, ProjectModel) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(ProjectModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
