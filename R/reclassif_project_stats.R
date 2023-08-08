# Generated automatically. See README before editing.

#' Reclassif Project Stats
#'
#' Dig into reclassification logs and **return the associations (source → target) for previous reclassifications.**
#'
#' @param project_id integer; Internal, numeric id of the project.
#'
#' @export
reclassif_project_stats <- function(project_id) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxa/reclassification_history/", project_id, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
