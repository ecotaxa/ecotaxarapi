# Generated automatically. See README before editing.

#' Put User File
#'
#' **Upload a file for the current user.** The returned text will contain a server-side path which is usable for some file-related operations. *e.g. import.*
#'
#' @param Body_put_user_file_my_files__post Output of Body_put_user_file_my_files__post();
#'
#' @export
post_user_file <- function(Body_put_user_file_my_files__post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/my_files/")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_multipart(!!!Body_put_user_file_my_files__post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
