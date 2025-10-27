# Generated automatically. See README before editing.

#' Classify Object Set
#'
#' **Change classification and/or qualification for a set of objects.** **Returns the number of updated entities.** 🔒 Current user needs at *least Annotate* right on all projects of specified objects.
#'
#' @param ClassifyReq Output of [ClassifyReq()];
#'
#' @export
classify_object_set <- function(ClassifyReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/classify")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ClassifyReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
