# Generated automatically. See README before editing.

#' List Common Files
#'
#' **List the common files** which are usable for some file-related operations. *e.g. import.*
#'
#' @param path string; NULL
#'
#' @export
list_common_files <- function(path) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "common_files", "") %>%
      httr2::req_url_query(path = path) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
