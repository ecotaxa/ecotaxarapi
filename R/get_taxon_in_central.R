# Generated automatically. See README before editing.

#' Get Taxon In Central
#'
#' Return **EcoTaxoServer full record for this taxon**.
#'
#' @param taxon_id integer; Internal, the unique numeric id of this taxon.
#'
#' @export
get_taxon_in_central <- function(taxon_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxon", "central", taxon_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
