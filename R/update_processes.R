# Generated automatically. See README before editing.

#' Update Processes
#'
#' Do the required **update for each process in the set.** **Returns the number of updated entities.**
#'
#' @param target_ids array; The IDs of the target entities.
#' @param updates array; The list of updates, to do on all impacted entities. { ucol : A column name, pseudo-columns AKA free ones, are OK. uval : The new value to set, always as a string }
#'
#' @export
update_processes <- function(target_ids = NULL, updates = NULL) {
  request_body <- list(target_ids = target_ids, updates = updates)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/process_set/update")) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
