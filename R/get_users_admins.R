# Generated automatically. See README before editing.

#' Get Users Admins
#'
#' **List users administrators**, themselves being users. 🔒 Public, no auth.
#'
#'
#' @export
get_users_admins <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "users", "admins") %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
