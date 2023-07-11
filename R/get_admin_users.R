# Generated automatically. See README before editing.

#' Get Admin Users
#'
#' **List application administrators**, themselves being users. 🔒 Any authenticated user can access the list.
#'
#'
#' @export
get_admin_users <- function() {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/users/user_admins"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
