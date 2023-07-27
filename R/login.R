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
  request_body <- list(password = password, username = username)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/login")) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_perform()
  )
}
