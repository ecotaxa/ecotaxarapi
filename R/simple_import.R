# Generated automatically. See README before editing.

#' Simple Import
#'
#' **Import images only**, with same metadata for all.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param dry_run boolean; If set, then only a diagnostic of doability will be done. In this case, plain value check. If no dry_run, this call will create a background job.
#' @param source_path string; Source path on server, to zip or plain directory.
#' @param values object; :imgdate, imgtime, latitude, longitude, depthmin, depthmax, taxolb, userlb, status
#' @param possible_values array; NULL
#'
#' @export
simple_import <- function(project_id, dry_run, source_path = NULL, values = NULL, possible_values = NULL) {
  request_body <- list(source_path = source_path, values = values, possible_values = possible_values)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/simple_import/", project_id, "", query_string(dry_run = dry_run))) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
