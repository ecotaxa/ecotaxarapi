# Generated automatically. See README before editing.

#' Project Set Get Projects
#'
#' **Returns projects statistics**, i.e. used taxa and classification states.
#'
#' @param ids string; String containing the list of one or more project id separated by non-num char. **If several ids are provided**, one stat record will be returned per project.
#' @param fields string; Return the default fields (typically used in conjunction with an additional field list). To return selected fields.
#'
#' @export
project_set_get_projects <- function(ids, fields = NULL) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "project_set", "projects") %>%
      httr2::req_url_query(ids = ids, fields = fields) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
