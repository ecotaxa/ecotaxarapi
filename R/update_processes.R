# Generated automatically. See README before editing.

#' Update Processes
#'
#' Do the required **update for each process in the set.** **Returns the number of updated entities.**
#'
#' @param BulkUpdateReq Output of BulkUpdateReq();
#'
#' @export
update_processes <- function(BulkUpdateReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/process_set/update")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(BulkUpdateReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
