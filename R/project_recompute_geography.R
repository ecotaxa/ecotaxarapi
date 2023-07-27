# Generated automatically. See README before editing.

#' Project Recompute Geography
#'
#' **Recompute geography information** for all samples in project. **Returns NULL upon success.** 🔒 The user has to be *project manager*.
#'
#' @param project_id integer; Internal, numeric id of the project.
#'
#' @export
project_recompute_geography <- function(project_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "/recompute_geo")) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
