# Generated automatically. See README before editing.

#' Search Organizations
#'
#' **Search for organizations.** So far, organizations are just names in users table.
#'
#' @param name string; Search by name, use % for searching with 'any char'.
#'
#' @export
search_organizations <- function(name) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/organizations/search", query_string(name = name))) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
