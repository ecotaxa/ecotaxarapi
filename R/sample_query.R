# Generated automatically. See README before editing.

#' Sample Query
#'
#' Returns **information about the sample** corresponding to the given id.
#'
#' @param sample_id integer; Internal, the unique numeric id of this sample.
#'
#' @export
sample_query <- function(sample_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "sample", sample_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
