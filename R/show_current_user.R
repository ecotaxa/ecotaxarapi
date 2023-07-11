# Generated automatically. See README before editing.

#' Show Current User
#'
#' Returns **currently authenticated user's** (i.e. you) information, permissions and last used projects.
#'
#'
#' @export
show_current_user <- function() {
  handle_api_response(
    httr::GET(
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
