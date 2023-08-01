# Generated automatically. See README before editing.

#' Classify Object Set
#'
#' **Change classification and/or qualification for a set of objects.** **Returns the number of updated entities.** 🔒 Current user needs at *least Annotate* right on all projects of specified objects.
#'
#' @param target_ids array; The IDs of the target objects.
#' @param classifications array; The wanted new classifications, i.e. taxon ID, one for each object. Use -1 to keep present one.
#' @param wanted_qualification string; The wanted qualifications for all objects. 'V' or 'P'.
#'
#' @export
classify_object_set <- function(target_ids = NULL, classifications = NULL, wanted_qualification = NULL) {
  request_body <- list(target_ids = target_ids, classifications = classifications, wanted_qualification = wanted_qualification)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/classify")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
