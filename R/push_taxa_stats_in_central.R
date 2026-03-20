# Generated automatically. See README before editing.

#' Push Taxa Stats In Central
#'
#' **Push present instance stats**, into EcoTaxoServer.
#'
#'
#' @export
push_taxa_stats_in_central <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxa", "stats", "push_to_central") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
