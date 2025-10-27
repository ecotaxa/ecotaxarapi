# Generated automatically. See README before editing.

#' Put My File
#'
#' **Upload a file for the current user files directory.** The returned text will contain a server-side path which is usable for some file-related operations. *e.g. import.*
#'
#' @param Body_put_my_file_user_files__post Output of [Body_put_my_file_user_files__post()];
#'
#' @export
post_my_file <- function(Body_put_my_file_user_files__post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/user_files/")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_multipart(!!!Body_put_my_file_user_files__post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
