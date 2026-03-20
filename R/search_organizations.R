# Generated automatically. See README before editing.

#' Search Organizations
#'
#' **Search for organizations.**
#'
#' @param name string; Search by name, use % for searching with 'any char'.
#'
#' @export
search_organizations <- function(name) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "organizations", "search") %>%
      httr2::req_url_query(name = name) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
