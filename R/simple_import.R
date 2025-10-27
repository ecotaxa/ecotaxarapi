# Generated automatically. See README before editing.

#' Simple Import
#'
#' **Import images only**, with same metadata for all.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param dry_run boolean; If set, then only a diagnostic of doability will be done. In this case, plain value check. If no dry_run, this call will create a background job.
#' @param SimpleImportReq Output of [SimpleImportReq()]; Simple Import request.
#'
#' @export
simple_import <- function(project_id, dry_run, SimpleImportReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/simple_import/", project_id, "", query_string(dry_run = dry_run))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(SimpleImportReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
