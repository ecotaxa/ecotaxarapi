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
    httr2::request(base_url = paste0(api_url(), "/users/", user_id, "")) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
