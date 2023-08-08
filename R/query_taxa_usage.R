# Generated automatically. See README before editing.

#' Query Taxa Usage
#'
#' **Where a given taxon is used.** Only validated uses are returned.
#'
#' @param taxon_id integer; Internal, the unique numeric id of this taxon.
#'
#' @export
query_taxa_usage <- function(taxon_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxon/", taxon_id, "/usage")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
