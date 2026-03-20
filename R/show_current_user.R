# Generated automatically. See README before editing.

#' Show Current User
#'
#' Returns **currently authenticated user's** (i.e. you) information, permissions and last used projects.
#'
#'
#' @export
show_current_user <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "users", "me") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
