# Generated automatically. See README before editing.

#' Used Constants
#'
#' **Return useful strings for user dialog.** Now also used for values extracted from Config.
#'
#'
#' @export
used_constants <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "constants") %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
