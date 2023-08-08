# Generated automatically. See README before editing.

#' Export Object Set
#'
#' **Start an export job for the given object set and options.**
#'
#' @param Body_export_object_set_object_set_export_post Output of Body_export_object_set_object_set_export_post();
#'
#' @export
export_object_set <- function(Body_export_object_set_object_set_export_post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/export")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(Body_export_object_set_object_set_export_post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
