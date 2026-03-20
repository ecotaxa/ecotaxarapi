# Generated automatically. See README before editing.

#' Taxa Tree Status
#'
#' **Return the status of taxonomy tree** w/r to freshness.
#'
#'
#' @export
taxa_tree_status <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "taxa", "status") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
