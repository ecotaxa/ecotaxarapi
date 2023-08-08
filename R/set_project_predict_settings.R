# Generated automatically. See README before editing.

#' Set Project Predict Settings
#'
#' **Update the project's prediction settings**, return **NULL upon success.** 🔒 Unlike during full project update above, which needs high permissions, this entry point is accessible to **project annotators**, as it mirrors the prediction privileges.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param settings string; The new prediction settings.
#'
#' @export
set_project_predict_settings <- function(project_id, settings) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/prediction_settings", query_string(settings = settings))) %>%
      httr2::req_method("PUT") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
