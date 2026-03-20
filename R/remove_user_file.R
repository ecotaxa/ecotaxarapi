# Generated automatically. See README before editing.

#' Remove User File
#'
#' **Remove a file, or directory in the current user files directory.**
#'
#'
#' @export
remove_user_file <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "user_files", "rm", "") %>%
      httr2::req_method("POST") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
