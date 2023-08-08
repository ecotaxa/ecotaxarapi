# Generated automatically. See README before editing.

#' Search Collections
#'
#' **Search for collections.** Note: Only manageable collections are returned.
#'
#' @param title string; Search by title, use % for searching with 'any char'.
#'
#' @export
search_collections <- function(title) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/search", query_string(title = title))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
