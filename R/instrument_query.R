# Generated automatically. See README before editing.

#' Instrument Query
#'
#' Returns the list of instruments, inside specific project(s) or globally.
#'
#' @param project_ids string; String containing the list of one or more project ids, separated by non-num char, or 'all' for all instruments.
#'
#' @export
instrument_query <- function(project_ids) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "instruments", "") %>%
      httr2::req_url_query(project_ids = project_ids) %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
