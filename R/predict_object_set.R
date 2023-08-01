# Generated automatically. See README before editing.

#' Predict Object Set
#'
#' **Start a prediction** AKA automatic classification for the given object set and options.
#'
#' @param filters NULL; NULL
#' @param request NULL; NULL
#'
#' @export
predict_object_set <- function(filters = NULL, request = NULL) {
  request_body <- list(filters = filters, request = request)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/predict")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
