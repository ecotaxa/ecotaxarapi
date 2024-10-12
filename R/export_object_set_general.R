# Generated automatically. See README before editing.

#' Export Object Set General
#'
#' Start a general-purpose export job for the given object set and options. 🔒 Current user needs *at least Read* right on the requested project.
#'
#' @param Body_export_object_set_general_object_set_export_general_post Output of Body_export_object_set_general_object_set_export_general_post();
#'
#' @export
export_object_set_general <- function(Body_export_object_set_general_object_set_export_general_post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/export/general")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(Body_export_object_set_general_object_set_export_general_post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
