# Generated automatically. See README before editing.

#' Project Query
#'
#' **Returns project** if it exists for current user, eventually for managing it.
#'
#' @param project_id integer; Internal, numeric id of the project.
#' @param for_managing boolean; For managing this project.
#'
#' @export
project_query <- function(project_id, for_managing = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/projects/", project_id, "", query_string(for_managing = for_managing))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
