# Generated automatically. See README before editing.

#' Create User File
#'
#' **Create a new file or directory in the current user files directory.** The returned text will contain a server-side path which is usable for some file-related operations.
#'
#'
#' @export
create_user_file <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "user_files", "create", "") %>%
      httr2::req_method("POST") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
