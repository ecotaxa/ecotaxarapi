# Generated automatically. See README before editing.

#' Update Collection Taxo Recast
#'
#' **Create or Update the collection taxonomy recast**. **Returns NULL upon success.** Note: The collection is updated only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#' @param from_to object; Mapping from seen taxon (key) to output replacement one (value). Use a null replacement to _discard_ the present taxon. Note: keys are strings.
#' @param doc object; To keep memory of the reasons for the above mapping. Note: keys are strings.
#'
#' @export
update_collection_taxonomy_recast <- function(collection_id, from_to = NULL, doc = NULL) {
  request_body <- list(from_to = from_to, doc = doc)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "/taxo_recast")) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
