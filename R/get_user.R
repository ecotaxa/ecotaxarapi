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
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "users", user_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
