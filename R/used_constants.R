# Generated automatically. See README before editing.

#' Used Constants
#'
#' **Return useful strings for user dialog.** Now also used for values extracted from Config.
#'
#'
#' @export
used_constants <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/constants")) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
