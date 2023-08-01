# Generated automatically. See README before editing.

#' System Error
#'
#' **Return a 500 internal error**, on purpose so the stack trace is visible and client can see what it gives.
#'
#'
#' @export
system_error <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/error")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
