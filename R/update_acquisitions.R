# Generated automatically. See README before editing.

#' Update Acquisitions
#'
#' Do the required **update for each acquisition in the set**. **Return the number of updated entities.**
#'
#' @param BulkUpdateReq Output of [BulkUpdateReq()];
#'
#' @export
update_acquisitions <- function(BulkUpdateReq) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "acquisition_set", "update") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(BulkUpdateReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
