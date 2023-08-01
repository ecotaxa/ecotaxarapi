# Generated automatically. See README before editing.

#' Create Collection
#'
#' **Create a collection** with at least one project inside. Returns the created collection Id. Note: 'manage' right is required on all underlying projects.
#'
#' @param title string; The collection title.
#' @param project_ids array; The list of composing project IDs.
#'
#' @export
create_collection <- function(title = NULL, project_ids = NULL) {
  request_body <- list(title = title, project_ids = project_ids)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/create")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
