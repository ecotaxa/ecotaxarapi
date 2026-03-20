# Generated automatically. See README before editing.

#' Login
#'
#' **Login barrier,** If successful, the login will return a **JWT** which will have to be used in bearer authentication scheme for subsequent calls.
#'
#' @param LoginReq Output of [LoginReq()];
#'
#' @export
login <- function(LoginReq) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "login") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(LoginReq) %>%
      httr2::req_perform()
  )
}
