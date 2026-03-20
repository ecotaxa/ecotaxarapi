# Generated automatically. See README before editing.

#' Search Worms Name
#'
#' Information about a single taxon in WoRMS reference, including its lineage.
#'
#' @param name string; NULL
#'
#' @export
search_worms_name <- function(name) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "searchworms", name) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
