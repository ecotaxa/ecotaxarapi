# Generated automatically. See README before editing.

#' Export Object Set Summary
#'
#' Start a summary export job for the given object set and options. 🔒 Current user needs *at least Read* right on the requested project.
#'
#' @param Body_export_object_set_summary_object_set_export_summary_post Output of [Body_export_object_set_summary_object_set_export_summary_post()];
#'
#' @export
export_object_set_summary <- function(Body_export_object_set_summary_object_set_export_summary_post) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/export/summary")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(Body_export_object_set_summary_object_set_export_summary_post) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
