# Generated automatically. See README before editing.

#' Get Guest
#'
#' Returns **information about the user** corresponding to the given id.
#'
#' @param guest_id integer; Internal, the unique numeric id of this guest.
#'
#' @export
get_guest <- function(guest_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "guests", guest_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
