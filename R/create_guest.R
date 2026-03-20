# Generated automatically. See README before editing.

#' Create Guest
#'
#' **Create a new guest**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator or logged project manager can create a guest. - An ordinary logged user cannot create another guest. If back-end configuration for self-creation check is Google reCAPTCHA, then no_bot is a pair \[remote IP, reCAPTCHA response\].
#'
#' @param GuestModel Output of [GuestModel()];
#'
#' @export
create_guest <- function(GuestModel) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "guests", "create") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(GuestModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
