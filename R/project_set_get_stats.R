# Generated automatically. See README before editing.

#' Project Set Get Stats
#'
#' **Returns projects statistics**, i.e. used taxa and classification states.
#'
#' @param ids string; String containing the list of one or more project id separated by non-num char. **If several ids are provided**, one stat record will be returned per project.
#' @param taxa_ids string; **If several taxa_ids are provided**, one stat record will be returned per requested taxa, if populated. **If taxa_ids is all**, all valued taxa in the project(s) are returned.
#'
#' @export
project_set_get_stats <- function(ids, taxa_ids = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/project_set/taxo_stats", query_string(ids = ids, taxa_ids = taxa_ids))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
