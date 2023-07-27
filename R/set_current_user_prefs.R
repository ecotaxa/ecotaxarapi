# Generated automatically. See README before editing.

#' Set Current User Prefs
#'
#' **Sets one preference**, for a project and for the currently authenticated user. Available keys are **cwd**, **img_import** and **filters**. The key disappears if set to empty string. **Returns NULL upon success.**
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param key string; The preference key, as text.
#' @param value string; The value to set this preference to, as text.
#'
#' @export
set_current_user_prefs <- function(project_id, key, value) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/my_preferences/", project_id, "", query_string(key = key, value = value))) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
