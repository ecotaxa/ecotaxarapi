# Generated automatically. See README before editing.

#' Create User
#'
#' **Create a new user**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator can create a user. - An unlogged user can self-create an account. But must eventually provide a no-robot proof. - An ordinary logged user cannot create another account. If back-end configuration for self-creation check is Google reCAPTCHA, then no_bot is a pair [remote IP, reCAPTCHA response].
#'
#' @param no_bot array; not-a-robot proof
#' @param UserModelWithRights Output of UserModelWithRights();
#'
#' @export
create_user <- function(no_bot = NULL, UserModelWithRights) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/create", query_string(no_bot = no_bot))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(UserModelWithRights) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
