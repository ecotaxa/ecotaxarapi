# Generated automatically. See README before editing.

#' Login
#'
#' **Login barrier,** If successful, the login will returns a **JWT** which will have to be used in bearer authentication scheme for subsequent calls.
#'
#' @param password string; User password.
#' @param username string; User email used during registration.
#'
#' @export
login <- function(password = NULL, username = NULL) {
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(password = password, username = username)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::POST(
      url = paste0(api_url(), "/login"),
      body = request_body_json, encode = "raw",
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
