# Generated automatically. See README before editing.

#' Search Taxa
#'
#' **Search for taxa by name.** Queries can be 'small', i.e. of length ﹤3 and even zero-length. 🔓 For a public, unauthenticated call : - zero-length and small queries always return nothing. - otherwise, a full search is done and results are returned in alphabetical order. 🔒 For an authenticated call : - zero-length queries: return the MRU list in full. - small queries: the MRU list is searched, so that taxa in the recent list are returned, if matching. - otherwise, a full search is done. Results are ordered so that taxa in the project list are in first, and are signalled as such in the response.
#'
#' @param query string; Use this query for matching returned taxa names.
#' @param project_id integer; Internal, numeric id of the project.
#'
#' @export
search_taxa <- function(query, project_id = NULL) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxon_set", "search") %>%
      httr2::req_url_query(query = query, project_id = project_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
