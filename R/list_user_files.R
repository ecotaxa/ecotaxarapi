# Generated automatically. See README before editing.

#' List User Files
#'
#' **List the private files** from user files directory which are usable for some file-related operations. A sub_path starting with "/" is considered relative to user folder. *e.g. import.*
#'
#' @param sub_path string; NULL
#'
#' @export
list_user_files <- function(sub_path) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "user_files", sub_path) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
