# Generated automatically. See README before editing.

#' Create User
#'
#' **Create a new user**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator can create a user. - An unlogged user can self-create an account. But must eventually provide a no-robot proof. - An ordinary logged user cannot create another account. If back-end configuration for self-creation check is Google reCAPTCHA, then no_bot is a pair [remote IP, reCAPTCHA response].
#'
#' @param no_bot array; not-a-robot proof
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
create_user <- function(no_bot = NULL, id = NULL, email = NULL, password = NULL, name = NULL, organisation = NULL, active = NULL, country = NULL, usercreationdate = NULL, usercreationreason = NULL, can_do = NULL, last_used_projects = NULL) {
  # convert body to json ourselves, to control the settings
  # this is based on the httr defaults with some additions
  request_body <- list(id = id, email = email, password = password, name = name, organisation = organisation, active = active, country = country, usercreationdate = usercreationdate, usercreationreason = usercreationreason, can_do = can_do, last_used_projects = last_used_projects)
  request_body_json <- jsonlite::toJSON(request_body, auto_unbox = TRUE, digits = 22, null = "null")
  handle_api_response(
    httr::POST(
      url = paste0(api_url(), "/users/create", query_string(no_bot = no_bot)),
      body = request_body_json, encode = "raw",
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
