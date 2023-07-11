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
    httr::GET(
      url = paste0(api_url(), "/collections/", collection_id, ""),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
