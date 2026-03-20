# Generated automatically. See README before editing.

#' Query Root Taxa
#'
#' **Return all taxa with no parent.**
#'
#'
#' @export
query_root_taxa <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxa") %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
