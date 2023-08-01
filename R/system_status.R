# Generated automatically. See README before editing.

#' System Status
#'
#' **Report the status**, mainly used for verifying that the server is up. Depending on provided credentials, you get more or less information.
#'
#'
#' @export
system_status <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/status")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
