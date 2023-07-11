# Generated automatically. See README before editing.

#' Get User
#'
#' Returns **information about the user** corresponding to the given id.
#'
#' @param user_id integer; Internal, the unique numeric id of this user.
#'
#' @export
get_user <- function(user_id) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/users/{user_id}"),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
