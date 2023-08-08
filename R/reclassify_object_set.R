# Generated automatically. See README before editing.

#' Reclassify Object Set
#'
#' Regardless of present classification or state, **set the new classification for this object set.** If the filter designates "all with given classification", add a TaxonomyChangeLog entry. **Returns the number of affected objects.**
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param forced_id integer; The new classification Id.
#' @param reason string; The reason of this new classification.
#' @param ProjectFilters Output of ProjectFilters(); How to reduce project data.
#'
#' @export
reclassify_object_set <- function(project_id, forced_id, reason, ProjectFilters) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/reclassify", query_string(forced_id = forced_id, reason = reason))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ProjectFilters) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
