# Generated automatically. See README before editing.

#' Get Users Admins
#'
#' **List users administrators**, themselves being users. 🔒 Public, no auth.
#'
#'
#' @export
get_users_admins <- function() {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/users/admins"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
