# Generated automatically. See README before editing.

#' Project Check
#'
#' **Check consistency of a project**. With time and bugs, some consistency problems could be introduced in projects. This service aims at listing them.
#'
#' @param project_id integer; Internal, numeric id of the project.
#'
#' @export
project_check <- function(project_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/check")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
