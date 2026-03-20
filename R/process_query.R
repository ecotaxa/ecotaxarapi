# Generated automatically. See README before editing.

#' Process Query
#'
#' Returns **information about the process** corresponding to the given id.
#'
#' @param process_id integer; Internal, the unique numeric id of this process.
#'
#' @export
process_query <- function(process_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "process", process_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
