# Generated automatically. See README before editing.

#' Do Nothing
#'
#' **This entry point will just do nothing.** It's also used for exporting models we need on client side.
#'
#'
#' @export
do_nothing <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/noop")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
