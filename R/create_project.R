# Generated automatically. See README before editing.

#' Create Project
#'
#' **Create an empty project with only a title,** and **return the numeric id of this newly created project**. The project will be managed by current user. 🔒 The user has to be *app administrator* or *project creator*.
#'
#' @param clone_of_id integer; Internal, numeric id of a project to clone as a new one. By default it does not clone anything.
#' @param title string; The project title, as text.
#' @param visible boolean; When TRUE, the project is created visible by all users.
#'
#' @export
create_project <- function(clone_of_id = NULL, title = NULL, visible = NULL) {
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(clone_of_id = clone_of_id, title = title, visible = visible)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::POST(
      url = paste0(api_url(), "/projects/create"),
      body = request_body_json, encode = "raw",
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
