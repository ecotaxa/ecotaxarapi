# Generated automatically. See README before editing.

#' List My Files
#'
#' **List the private files** from user files directory which are usable for some file-related operations. A sub_path starting with "/" is considered relative to user folder. *e.g. import.*
#'
#' @param sub_path string; NULL
#'
#' @export
list_my_files <- function(sub_path) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/user_files/", sub_path, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
