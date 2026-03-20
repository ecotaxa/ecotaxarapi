# Generated automatically. See README before editing.

#' Query Object Set Predictions
#'
#' ** Return last prediction information for a set of objects, by their IDs.
#'
#' @param object_ids_list array; The list of object ids.
#'
#' @export
object_set_predictions <- function(object_ids_list) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "object_set", "predictions") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(list(object_ids_list)) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
