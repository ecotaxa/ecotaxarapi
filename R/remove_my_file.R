# Generated automatically. See README before editing.

#' Remove File
#'
#' **Remove a file, or directory in the current user files directory.**
#'
#'
#' @export
remove_my_file <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/user_files/rm/")) %>%
      httr2::req_method("POST") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
