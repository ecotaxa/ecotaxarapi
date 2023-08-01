# Generated automatically. See README before editing.

#' Put User File
#'
#' **Upload a file for the current user.** The returned text will contain a server-side path which is usable for some file-related operations. *e.g. import.*
#'
#'
#' @export
post_user_file <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/my_files/")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
