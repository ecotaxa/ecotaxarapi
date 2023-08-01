# Generated automatically. See README before editing.

#' Add Taxon In Central
#'
#' **Create a taxon** on EcoTaxoServer. 🔒 Logged user must be manager (on any project) or application admin.
#'
#' @param name string; The taxon/category verbatim name.
#' @param parent_id integer; It's not possible to create a root taxon.
#' @param taxotype string; The taxon type, 'M' for Morpho or 'P' for Phylo.
#' @param creator_email string; The email of the taxo creator.
#' @param source_desc string; The source description.
#' @param source_url string; The source url.
#'
#' @export
add_taxon_in_central <- function(name, parent_id, taxotype, creator_email, source_desc = NULL, source_url = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxon/central", query_string(name = name, parent_id = parent_id, taxotype = taxotype, creator_email = creator_email, source_desc = source_desc, source_url = source_url))) %>%
      httr2::req_method("PUT") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
