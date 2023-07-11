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
    httr::GET(
      url = paste0(api_url(), "/users/my_preferences/{project_id}"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
