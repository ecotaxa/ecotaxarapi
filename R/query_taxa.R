# Generated automatically. See README before editing.

#' Query Taxa
#'
#' Returns **information about the taxon** corresponding to the given id, including its lineage.
#'
#' @param taxon_id integer; Internal, the unique numeric id of this taxon.
#'
#' @export
query_taxa <- function(taxon_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxon/", taxon_id, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
