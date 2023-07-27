# Generated automatically. See README before editing.

#' Update Object Set
#'
#' Do the required **update for each objects in the set.** **Returns the number of updated entities.** 🔒 Current user needs *Manage* right on all projects of specified objects.
#'
#' @param target_ids array; The IDs of the target entities.
#' @param updates array; The list of updates, to do on all impacted entities. { ucol : A column name, pseudo-columns AKA free ones, are OK. uval : The new value to set, always as a string }
#'
#' @export
update_object_set <- function(target_ids = NULL, updates = NULL) {
  request_body <- list(target_ids = target_ids, updates = updates)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/update")) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
