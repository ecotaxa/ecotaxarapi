# Generated automatically. See README before editing.

#' Get Collection
#'
#' Returns **information about the collection** corresponding to the given id. Note: The collection is returned only if manageable.
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#'
#' @export
get_collection <- function(collection_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/", collection_id, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
