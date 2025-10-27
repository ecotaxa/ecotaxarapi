# Generated automatically. See README before editing.

#' Object Similarity Search
#'
#' Returns, in given project, the objects matching the filter and similar to the queried one.
#'
#' @param project_id integer; Internal, numeric id of the project to search in.
#' @param object_id integer; Object ID to search similar for.
#' @param size integer; Return at maximum this number of object IDs, by default 100.
#' @param ProjectFilters Output of [ProjectFilters()]; How to reduce project data.
#'
#' @export
get_object_set_similarity_search <- function(project_id, object_id, size = NULL, ProjectFilters) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/", project_id, "/similarity_search/", object_id, "", query_string(size = size))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ProjectFilters) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
