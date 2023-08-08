# Generated automatically. See README before editing.

#' Query Taxa Set
#'
#' Returns **information about several taxa**, including their lineage.
#'
#' @param ids string; The separator between numbers is arbitrary non-digit, e.g. ':', '|' or ','.
#'
#' @export
query_taxa_set <- function(ids) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxon_set/query", query_string(ids = ids))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
