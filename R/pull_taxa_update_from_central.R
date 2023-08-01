# Generated automatically. See README before editing.

#' Pull Taxa Update From Central
#'
#' **Returns what changed in EcoTaxoServer managed tree** and update local tree accordingly. i.e. : the number of inserts as nbr_inserts, updates as nbr_updates and errors as errors.
#'
#'
#' @export
pull_taxa_update_from_central <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxa/pull_from_central")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
