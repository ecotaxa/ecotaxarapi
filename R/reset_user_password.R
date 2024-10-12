# Generated automatically. See README before editing.

#' Reset User Password
#'
#' reset user password **return NULL on success** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator can reset a user password. - An unlogged user can ask for a reset in two steps. and receive a mail with a token. But must eventually provide a no-robot proof. If back-end configuration for self-creation check is Google reCAPTCHA, then no_bot is a pair [remote IP, reCAPTCHA response].
#'
#' @param no_bot array; not-a-robot proof
#' @param token string; token in the url to validate request
#' @param ResetPasswordReq Output of ResetPasswordReq(); Minimal user information need to reset the password
#'
#' @export
reset_user_password <- function(no_bot = NULL, token = NULL, ResetPasswordReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/reset_user_password", query_string(no_bot = no_bot, token = token))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(ResetPasswordReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
