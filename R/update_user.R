# Generated automatically. See README before editing.

#' Update User
#'
#' **Update the user**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator can change any field with respect of consistency. - A user can update own password and name. - An ordinary user cannot update anything for another user.
#'
#' @param user_id integer; Internal, numeric id of the user.
#' @param UserModelWithRights Output of UserModelWithRights();
#'
#' @export
update_user <- function(user_id, UserModelWithRights) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/", user_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(UserModelWithRights) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
