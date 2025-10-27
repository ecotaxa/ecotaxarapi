# Generated automatically. See README before editing.

#' Project Collections
#'
#' **Returns project collections list of id, title
#'
#' @param project_id integer; Internal, numeric id of the project.
#'
#' @export
project_collections <- function(project_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/collections")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
