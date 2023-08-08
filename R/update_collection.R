# Generated automatically. See README before editing.

#' Update Collection
#'
#' **Update the collection**. Note that some updates are silently failing when not compatible with the composing projects. **Returns NULL upon success.** Note: The collection is updated only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#' @param CollectionModel Output of CollectionModel(); Basic and computed information about the Collection.
#'
#' @export
update_collection <- function(collection_id, CollectionModel) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(CollectionModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
