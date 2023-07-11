# Generated automatically. See README before editing.

#' Get Users
#'
#' Returns the list of **all users** with their information. 🔒 *For admins only.*
#'
#'
#' @export
get_users <- function() {
  handle_api_response(
    httr::GET(
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
