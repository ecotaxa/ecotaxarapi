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
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(filters = filters, dest_prj_id = dest_prj_id, group_type = group_type, limit_type = limit_type, limit_value = limit_value)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::POST(
      url = paste0(api_url(), "/projects/", project_id, "/subset"),
      body = request_body_json, encode = "raw",
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
