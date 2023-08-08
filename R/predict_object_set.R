# Generated automatically. See README before editing.

#' Predict Object Set
#'
#' **Start a prediction** AKA automatic classification for the given object set and options.
#'
#' @param Body_predict_object_set_object_set_predict_post Output of Body_predict_object_set_object_set_predict_post();
#'
#' @export
predict_object_set <- function(Body_predict_object_set_object_set_predict_post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/predict")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(Body_predict_object_set_object_set_predict_post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
