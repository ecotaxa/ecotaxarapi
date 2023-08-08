# Generated automatically. See README before editing.

#' Revert Object Set To History
#'
#' **Revert all objects for the given project**, with the filters, to the target.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param dry_run boolean; If set, then no real write but consequences of the revert will be replied.
#' @param target integer; Use null/None for reverting using the last annotation from anyone, or a user id for the last annotation from this user.
#' @param ProjectFilters Output of ProjectFilters(); How to reduce project data.
#'
#' @export
revert_object_set_to_history <- function(project_id, dry_run, target = NULL, ProjectFilters) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/revert_to_history", query_string(dry_run = dry_run, target = target))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ProjectFilters) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
