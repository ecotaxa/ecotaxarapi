# Generated automatically. See README before editing.

#' Create Organization
#'
#' **Create a new organization**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator or logged project manager can create an organization. - An ordinary logged user cannot create another organization this way.
#'
#' @param OrganizationModel Output of [OrganizationModel()];
#'
#' @export
create_organization <- function(OrganizationModel) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "organizations", "create") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(OrganizationModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
