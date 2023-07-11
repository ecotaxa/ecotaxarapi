# Generated automatically. See README before editing.

#' Collection By Title
#'
#' Return the **single collection with this title**. *For published datasets.* ⚠️ DO NOT MODIFY BEHAVIOR ⚠️
#'
#' @param q string; Search by **exact** title.
#'
#' @export
collection_by_title <- function(q) {
  handle_api_response(
    httr::GET(
      url = paste0(api_url(), "/collections/by_title", query_string(q = q)),
      httr::add_headers(Authorization = paste0("Bearer ", api_token())),
      config = httr::config(ssl_verifypeer = FALSE)
    )
  )
}
