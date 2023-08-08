# Generated automatically. See README before editing.

#' Create Collection
#'
#' **Create a collection** with at least one project inside. Returns the created collection Id. Note: 'manage' right is required on all underlying projects.
#'
#' @param CreateCollectionReq Output of CreateCollectionReq();
#'
#' @export
create_collection <- function(CreateCollectionReq) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections/create")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(CreateCollectionReq) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
