# Generated automatically. See README before editing.

#' Show Current User
#'
#' Returns **currently authenticated user's** (i.e. you) information, permissions and last used projects.
#'
#'
#' @export
show_current_user <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/me")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
