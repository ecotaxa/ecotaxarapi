# Generated automatically. See README before editing.

#' System Error
#'
#' **Return a 500 internal error**, on purpose so the stack trace is visible and client can see what it gives.
#'
#'
#' @export
system_error <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "error") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
