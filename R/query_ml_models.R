# Generated automatically. See README before editing.

#' Query Ml Models
#'
#' **Return the list of machine learning models, which can be used for extracting image features.**
#'
#'
#' @export
query_ml_models <- function() {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "ml_models") %>%
      httr2::req_method("GET") %>%
      httr2::req_perform()
  )
}
