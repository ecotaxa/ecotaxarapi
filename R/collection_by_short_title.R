# Generated automatically. See README before editing.

#' Collection By Short Title
#'
#' Return the **single collection with this short title**. *For published datasets.* ⚠️ DO NOT MODIFY BEHAVIOR ⚠️
#'
#' @param q string; Search by **exact** short title.
#'
#' @export
collection_by_short_title <- function(q) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/by_short_title", query_string(q = q))) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
