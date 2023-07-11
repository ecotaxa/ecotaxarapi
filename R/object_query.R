#' Object Query
#'
#' Returns **information about the object** corresponding to the given id. 🔒 Anonymous reader can do if the project has the right rights :)
#'
#' @param object_id integer; Internal, the unique numeric id of this object.
#'
#' @export
object_query <- function(object_id) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/object/{object_id}"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
