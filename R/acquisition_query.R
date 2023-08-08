# Generated automatically. See README before editing.

#' Acquisition Query
#'
#' Returns **information about the acquisition** corresponding to the given id.
#'
#' @param acquisition_id integer; Internal, the unique numeric id of this acquisition.
#'
#' @export
acquisition_query <- function(acquisition_id) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/acquisition/", acquisition_id, "")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
