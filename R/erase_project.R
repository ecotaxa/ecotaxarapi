# Generated automatically. See README before editing.

#' Erase Project
#'
#' **Delete the project.** Optionally, if "only_objects" is set, the project structure is kept, but emptied from any object, sample, acquisition and process. Otherwise, no trace of the project will remain in the database. **Returns** the number of : **deleted objects**, 0, **deleated image rows** and **deleated image files**.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param only_objects boolean; If set, the project structure is kept, but emptied from any object, sample, acquisition and process.
#'
#' @export
erase_project <- function(project_id, only_objects = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "", query_string(only_objects = only_objects))) %>%
      httr2::req_method("DELETE") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
