# Generated automatically. See README before editing.

#' Login
#'
#' **Login barrier,** If successful, the login will returns a **JWT** which will have to be used in bearer authentication scheme for subsequent calls.
#'
#' @param LoginReq Output of LoginReq();
#'
#' @export
login <- function(LoginReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/login")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(LoginReq) %>%
      httr2::req_perform()
  )
}
