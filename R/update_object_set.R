# Generated automatically. See README before editing.

#' Update Object Set
#'
#' Do the required **update for each objects in the set.** **Returns the number of updated entities.** 🔒 Current user needs *Manage* right on all projects of specified objects.
#'
#' @param BulkUpdateReq Output of [BulkUpdateReq()];
#'
#' @export
update_object_set <- function(BulkUpdateReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/update")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(BulkUpdateReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
