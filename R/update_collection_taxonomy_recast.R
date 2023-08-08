# Generated automatically. See README before editing.

#' Update Collection Taxo Recast
#'
#' **Create or Update the collection taxonomy recast**. **Returns NULL upon success.** Note: The collection is updated only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#' @param TaxonomyRecast Output of TaxonomyRecast(); In various contexts, a taxo recast (from taxon -> to taxon) setting.
#'
#' @export
update_collection_taxonomy_recast <- function(collection_id, TaxonomyRecast) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "/taxo_recast")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(TaxonomyRecast) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
