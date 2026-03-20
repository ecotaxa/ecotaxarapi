# Generated automatically. See README before editing.

#' Sample Set Get Stats
#'
#' Returns **classification statistics** for each sample of the given list. One block of stats is returned for each input ID. EXPECT A SLOW RESPONSE : No cache of such information anywhere.
#'
#' @param sample_ids string; String containing the list of one or more sample ids separated by non-num char.
#'
#' @export
sample_set_get_stats <- function(sample_ids) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "sample_set", "taxo_stats") %>%
      httr2::req_url_query(sample_ids = sample_ids) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
