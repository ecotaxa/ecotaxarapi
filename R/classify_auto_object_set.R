# Generated automatically. See README before editing.

#' Classify Auto Object Set
#'
#' **Set automatic classification** of a set of objects. **Returns the number of updated entities.**
#'
#' @param target_ids array; The IDs of the target objects.
#' @param classifications array; The wanted new classifications, i.e. taxon ID, one for each object.
#' @param scores array; The classification score is generally between 0 and 1. It indicates the probability that the taxon prediction of this object is correct.
#' @param keep_log boolean; Set if former automatic classification history is needed.
#'
#' @export
classify_auto_object_set <- function(target_ids = NULL, classifications = NULL, scores = NULL, keep_log = NULL) {
  request_body <- list(target_ids = target_ids, classifications = classifications, scores = scores, keep_log = keep_log)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/classify_auto")) %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
