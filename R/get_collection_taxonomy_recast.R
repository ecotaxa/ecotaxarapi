# Generated automatically. See README before editing.

#' Read Collection Taxo Recast
#'
#' **Read the collection taxonomy recast**. **Returns NULL upon success.** Note: The collection data is returned only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#'
#' @export
get_collection_taxonomy_recast <- function(collection_id) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/collections/", collection_id, "/taxo_recast"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
