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
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "collections", collection_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
