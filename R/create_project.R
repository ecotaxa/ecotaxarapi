# Generated automatically. See README before editing.

#' Create Project
#'
#' **Create an empty project with only a title,** and **return the numeric id of this newly created project**. The project will be managed by current user. 🔒 The user has to be *app administrator* or *project creator*.
#'
#' @param CreateProjectReq Output of [CreateProjectReq()];
#'
#' @export
create_project <- function(CreateProjectReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/create")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(CreateProjectReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
