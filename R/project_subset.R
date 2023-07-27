# Generated automatically. See README before editing.

#' Project Subset
#'
#' **Subset a project into another one.**
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param filters NULL; The filters to apply to project.
#' @param dest_prj_id integer; The destination project ID.
#' @param group_type NULL; Define the groups in which to apply limits. C for categories, S for samples, A for acquisitions.
#' @param limit_type NULL; The type of limit_value: P for %, V for constant, both per group.
#' @param limit_value number; Limit value, e.g. 20% or 5 per copepoda or 5% per sample.
#'
#' @export
project_subset <- function(project_id, filters = NULL, dest_prj_id = NULL, group_type = NULL, limit_type = NULL, limit_value = NULL) {
  request_body <- list(filters = filters, dest_prj_id = dest_prj_id, group_type = group_type, limit_type = limit_type, limit_value = limit_value)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/subset")) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
