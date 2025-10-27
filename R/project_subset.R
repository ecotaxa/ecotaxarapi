# Generated automatically. See README before editing.

#' Project Subset
#'
#' **Subset a project into another one.**
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param SubsetReq Output of [SubsetReq()]; Subset request.
#'
#' @export
project_subset <- function(project_id, SubsetReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/subset")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(SubsetReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
