# Generated automatically. See README before editing.

#' Query Root Taxa
#'
#' **Return all taxa with no parent.**
#'
#'
#' @export
query_root_taxa <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxa")) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
