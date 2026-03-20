# Generated automatically. See README before editing.

#' Reclassif Stats
#'
#' Dig into reclassification logs and, for each input category id, **determine the most chosen target category, excluding the advised one.** By convention, if nothing relevant is found, the input category itself is returned. So one can expect that the returned list has the same size as the required one.
#'
#' @param taxa_ids string; String containing the list of one or more taxa id separated by non-num char.
#'
#' @export
reclassif_stats <- function(taxa_ids) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxa", "reclassification_stats") %>%
      httr2::req_url_query(taxa_ids = taxa_ids) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
