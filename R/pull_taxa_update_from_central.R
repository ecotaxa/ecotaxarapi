# Generated automatically. See README before editing.

#' Pull Taxa Update From Central
#'
#' **Returns what changed in EcoTaxoServer managed tree** and update local tree accordingly. i.e. : the number of inserts as nbr_inserts, updates as nbr_updates and errors as errors.
#'
#'
#' @export
pull_taxa_update_from_central <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxa", "pull_from_central") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
