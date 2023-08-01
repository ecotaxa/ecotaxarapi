# Generated automatically. See README before editing.

#' Taxa Tree Status
#'
#' **Return the status of taxonomy tree** w/r to freshness.
#'
#'
#' @export
taxa_tree_status <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/taxa/status")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
