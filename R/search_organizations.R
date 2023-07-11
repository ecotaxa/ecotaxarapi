# Generated automatically. See README before editing.

#' Search Organizations
#'
#' **Search for organizations.** So far, organizations are just names in users table.
#'
#' @param name string; Search by name, use % for searching with 'any char'.
#'
#' @export
search_organizations <- function(name) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/organizations/search", query_string(name = name)),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
