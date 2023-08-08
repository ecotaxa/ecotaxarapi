# Generated automatically. See README before editing.

#' Object Query
#'
#' Returns **information about the object** corresponding to the given id. 🔒 Anonymous reader can do if the project has the right rights :)
#'
#' @param object_id integer; Internal, the unique numeric id of this object.
#'
#' @export
object_query <- function(object_id) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object/", object_id, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
