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
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(from_to = from_to, doc = doc)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::PUT(
      url = paste0(api_url(), "/collections/", collection_id, "/taxo_recast"),
      body = request_body_json, encode = "raw",
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
