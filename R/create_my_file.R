# Generated automatically. See README before editing.

#' Create File
#'
#' **Create a new file or directory in the current user files directory.** The returned text will contain a server-side path which is usable for some file-related operations.
#'
#'
#' @export
create_my_file <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/user_files/create/")) %>%
      httr2::req_method("POST") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
