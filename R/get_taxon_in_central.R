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
    httr2::request(base_url = paste0(api_url(), "/taxon/central/", taxon_id, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
