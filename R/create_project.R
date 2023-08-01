# Generated automatically. See README before editing.

#' Create Project
#'
#' **Create an empty project with only a title,** and **return the numeric id of this newly created project**. The project will be managed by current user. 🔒 The user has to be *app administrator* or *project creator*.
#'
#' @param clone_of_id integer; Internal, numeric id of a project to clone as a new one. By default it does not clone anything.
#' @param title string; The project title, as text.
#' @param instrument string; The project instrument.
#' @param visible boolean; When TRUE, the project is created visible by all users.
#'
#' @export
create_project <- function(clone_of_id = NULL, title = NULL, instrument = NULL, visible = NULL) {
  request_body <- list(clone_of_id = clone_of_id, title = title, instrument = instrument, visible = visible)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/create")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
