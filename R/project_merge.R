# Generated automatically. See README before editing.

#' Project Merge
#'
#' **Merge another project into this one.** It's more a phagocytosis than a merge, as all objects from this source project will be moved to the project_id above and the source project itself will be deleted. TODO: Explain a bit with it might fail (too many free columns, unique orig_ids collision)
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param source_project_id integer; Id of the other project. All objects from this source project will be moved to the project_id above and the source project itself will be deleted.
#' @param dry_run boolean; If set, then only a diagnostic of doability will be done.
#'
#' @export
project_merge <- function(project_id, source_project_id, dry_run) {
  handle_api_response(
    httr::POST(
      url = paste0(api_url(), "/projects/{project_id}/merge"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
