# Generated automatically. See README before editing.

#' Update User
#'
#' **Update the user**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator can change any field with respect of consistency. - A user can update own password and name. - An ordinary user cannot update anything for another user.
#'
#' @param user_id integer; Internal, numeric id of the user.
#' @param id integer; The unique numeric id of this user.
#' @param email string; User's email address, as text, used during registration.
#' @param password string; Encrypted (or not) password.
#' @param name string; User's full name, as text.
#' @param organisation string; User's organisation name, as text.
#' @param active boolean; Whether the user is still active.
#' @param country string; The country name, as text (but chosen in a consistent list).
#' @param usercreationdate string; The date of creation of the user, as text formatted according to the ISO 8601 standard.
#' @param usercreationreason string; Paragraph describing the usage of EcoTaxa made by the user.
#' @param can_do array; List of User's allowed actions : 1 create a project, 2 administrate the app, 3 administrate users, 4 create taxon.
#' @param last_used_projects array; List of User's last used projects.
#'
#' @export
update_user <- function(user_id, id = NULL, email = NULL, password = NULL, name = NULL, organisation = NULL, active = NULL, country = NULL, usercreationdate = NULL, usercreationreason = NULL, can_do = NULL, last_used_projects = NULL) {
  request_body <- list(id = id, email = email, password = password, name = name, organisation = organisation, active = active, country = country, usercreationdate = usercreationdate, usercreationreason = usercreationreason, can_do = can_do, last_used_projects = last_used_projects)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/users/", user_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
