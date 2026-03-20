# Generated automatically. See README before editing.

#' Get Current User Prefs
#'
#' **Returns one preference**, for a project and the currently authenticated user. Available keys are **cwd**, **img_import** and **filters**.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param key string; The preference key, as text.
#'
#' @export
get_current_user_prefs <- function(project_id, key) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "users", "my_preferences", project_id) %>%
      httr2::req_url_query(key = key) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
