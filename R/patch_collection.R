# Generated automatically. See README before editing.

#' Patch Collection
#'
#' **Partial Update of the collection**. Note that some updates are silently failing when not compatible with the composing projects. **Returns NULL upon success.** Note: The collection is partiallly updated only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#' @param CollectionReq Output of [CollectionReq()]; update full or partial collection Request model
#'
#' @export
patch_collection <- function(collection_id, CollectionReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "")) %>%
      httr2::req_method("PATCH") %>%
      httr2::req_body_json(CollectionReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
