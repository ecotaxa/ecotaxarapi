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
    httr2::request(base_url = paste0(api_url(), "/sample/", sample_id, "")) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
