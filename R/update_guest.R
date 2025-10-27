# Generated automatically. See README before editing.

#' Update Guests
#'
#' **Update the guest**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator or manager user can change any field with respect of consistency.
#'
#' @param guest_id integer; Internal, numeric id of the guest.
#' @param GuestModel Output of [GuestModel()];
#'
#' @export
update_guest <- function(guest_id, GuestModel) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/guests/", guest_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(GuestModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
