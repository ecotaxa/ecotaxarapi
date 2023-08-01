# Generated automatically. See README before editing.

#' Project Set Get Column Stats
#'
#' **Returns projects validated data statistics**, for all named columns, in all given projects. The free columns here are named by the alias e.g. 'area', not technical name e.g. 'n43'. This allows getting stats on projects with different mappings, but common names.
#'
#' @param ids string; String containing the list of one or more id separated by non-num char.
#' @param names string; Coma-separated prefixed columns, on which stats are needed.
#' @param limit integer; Only compute stats on this number of objects per category.
#' @param categories string; String containing the Categories, one or more id separated by non-num char.
#'
#' @export
project_set_get_column_stats <- function(ids, names, limit = NULL, categories = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/project_set/column_stats", query_string(ids = ids, names = names, limit = limit, categories = categories))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
