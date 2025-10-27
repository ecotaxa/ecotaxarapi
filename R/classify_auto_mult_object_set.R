# Generated automatically. See README before editing.

#' Classify Auto Mult Object Set
#'
#' **Set automatic classification** of a set of objects. **Returns the number of updated entities.**
#'
#' @param ClassifyAutoReqMult Output of [ClassifyAutoReqMult()];
#'
#' @export
classify_auto_mult_object_set <- function(ClassifyAutoReqMult) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/classify_auto_multiple")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ClassifyAutoReqMult) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
