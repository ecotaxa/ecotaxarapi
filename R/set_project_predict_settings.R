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
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "projects", project_id, "prediction_settings") %>%
      httr2::req_url_query(settings = settings) %>%
      httr2::req_method("PUT") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
