# Generated automatically. See README before editing.

#' List User Files
#'
#' **List the private files** which are usable for some file-related operations. A sub_path starting with "/" is considered relative to user folder. *e.g. import.*
#'
#' @param sub_path string; NULL
#'
#' @export
list_user_files <- function(sub_path) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/my_files/", sub_path, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
