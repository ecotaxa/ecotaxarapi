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
    httr2::request(base_url = paste0(api_url(), "/project_set/projects", query_string(ids = ids, fields = fields))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
