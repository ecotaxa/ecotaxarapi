# Generated automatically. See README before editing.

#' List Common Files
#'
#' **List the common files** which are usable for some file-related operations. *e.g. import.*
#'
#' @param path string; NULL
#'
#' @export
list_common_files <- function(path) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/common_files/", query_string(path = path))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
