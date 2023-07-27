# Generated automatically. See README before editing.

#' Erase Collection
#'
#' **Delete the collection**, i.e. the precious fields, as the projects are just linked-at from the collection. Note: Only manageable collections can be deleted.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#'
#' @export
erase_collection <- function(collection_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "")) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
