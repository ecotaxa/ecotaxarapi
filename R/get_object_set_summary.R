# Generated automatically. See README before editing.

#' Get Object Set Summary
#'
#' For the given project, with given filters, **return the classification summary**. i.e.: - Total number of objects And optionally - Number of Validated ones - Number of Dubious ones - Number of Predicted ones
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param only_total boolean; If True, returns only the **Total number of objects**. Else returns also the **Number of validated ones**, the **number of Dubious ones** and the number of **predicted ones**.
#' @param ProjectFilters Output of ProjectFilters(); How to reduce project data.
#'
#' @export
get_object_set_summary <- function(project_id, only_total, ProjectFilters) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/summary", query_string(only_total = only_total))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ProjectFilters) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
