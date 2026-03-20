# Generated automatically. See README before editing.

#' Acquisition Query
#'
#' Returns **information about the acquisition** corresponding to the given id.
#'
#' @param acquisition_id integer; Internal, the unique numeric id of this acquisition.
#'
#' @export
acquisition_query <- function(acquisition_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "acquisition", acquisition_id) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
