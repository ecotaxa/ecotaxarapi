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
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/my_preferences/", project_id, "", query_string(key = key))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
