# Generated automatically. See README before editing.

#' Update Samples
#'
#' Do the required **update for each sample in the set.** Any non-null field in the model is written to every impacted sample. **Returns the number of updated entities.**
#'
#' @param BulkUpdateReq Output of [BulkUpdateReq()];
#'
#' @export
update_samples <- function(BulkUpdateReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/sample_set/update")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(BulkUpdateReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
