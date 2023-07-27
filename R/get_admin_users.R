# Generated automatically. See README before editing.

#' Get Admin Users
#'
#' **List application administrators**, themselves being users. 🔒 Any authenticated user can access the list.
#'
#'
#' @export
get_admin_users <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/user_admins")) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
