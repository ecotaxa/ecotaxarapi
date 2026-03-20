# Generated automatically. See README before editing.

#' Get Admin Users
#'
#' **List application administrators**, themselves being users. 🔒 Any authenticated user can access the list.
#'
#'
#' @export
get_admin_users <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "users", "user_admins") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
