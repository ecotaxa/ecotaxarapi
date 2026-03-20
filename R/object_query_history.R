# Generated automatically. See README before editing.

#' Object Query History
#'
#' Returns **information about the object's history** corresponding to the given id.
#'
#' @param object_id integer; Internal, the unique numeric id of this object.
#'
#' @export
object_query_history <- function(object_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "object", object_id, "history") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
