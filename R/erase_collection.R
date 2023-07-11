# Generated automatically. See README before editing.

#' Erase Collection
#'
#' **Delete the collection**, i.e. the precious fields, as the projects are just linked-at from the collection. 🔒 *For admins only.*
#'
#' @param collection_id integer; Internal, the unique numeric id of this collection.
#'
#' @export
erase_collection <- function(collection_id) {
  handle_api_response(
    httr::DELETE(
      url = paste0(api_url(), "/collections/{collection_id}"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
