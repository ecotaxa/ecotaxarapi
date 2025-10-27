# Generated automatically. See README before editing.

#' Update Organization
#'
#' **Update the organization**, return **NULL upon success.** 🔒 Depending on logged user, different authorizations apply: - An administrator or user administrator or manager user can change any field with respect of consistency.
#'
#' @param organization_id integer; Internal, numeric id of the organization.
#' @param OrganizationModel Output of [OrganizationModel()];
#'
#' @export
update_organization <- function(organization_id, OrganizationModel) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/organizations/", organization_id, "")) %>%
      httr2::req_method("PUT") %>%
      httr2::req_body_json(OrganizationModel) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
