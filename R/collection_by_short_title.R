# Generated automatically. See README before editing.

#' Collection By Short Title
#'
#' Return the **single collection with this short title**. *For published datasets.* ⚠️ DO NOT MODIFY BEHAVIOR ⚠️
#'
#' @param q string; Search by **exact** short title.
#'
#' @export
collection_by_short_title <- function(q) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "collections", "by_short_title") %>%
      httr2::req_url_query(q = q) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
