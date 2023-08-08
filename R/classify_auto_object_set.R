# Generated automatically. See README before editing.

#' Classify Auto Object Set
#'
#' **Set automatic classification** of a set of objects. **Returns the number of updated entities.**
#'
#' @param ClassifyAutoReq Output of ClassifyAutoReq();
#'
#' @export
classify_auto_object_set <- function(ClassifyAutoReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/classify_auto")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ClassifyAutoReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
