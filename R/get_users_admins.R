# Generated automatically. See README before editing.

#' Get Users Admins
#'
#' **List users administrators**, themselves being users. 🔒 Public, no auth.
#'
#'
#' @export
get_users_admins <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/admins")) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
