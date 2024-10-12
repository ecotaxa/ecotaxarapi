# Generated automatically. See README before editing.

#' Activate User
#'
#' Activate a new user if external validation is on., return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator can activate a user or bypass the activation and inform the user when a modification request value/reason is provided. - An ordinary logged user cannot activate another account. If back-end configuration for self-creation check is Google reCAPTCHA, then no_bot is a pair [remote IP, reCAPTCHA response].
#'
#' @param user_id integer; Internal, the unique numeric id of this user.
#' @param status string; Internal, the status name assign to this user.
#' @param no_bot array; not-a-robot proof
#' @param activatereq NULL; activation parameters : reason if the request comes from an Administrator, password if the request comes from the user as it serves as email confirmation request.
#'
#' @export
activate_user <- function(user_id, status, no_bot = NULL, activatereq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/activate/", user_id, "/", status, "", query_string(no_bot = no_bot))) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(list(activatereq)) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
