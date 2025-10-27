# Generated automatically. See README before editing.

#' List Collections
#'
#' **Search for collections.** Note: Only collections where the current user is manager are returned. All collections are returned if the user is application administrator
#'
#' @param collection_ids string; limit the list to a set of ids.
#' @param fields string; Return the default fields (typically used in conjunction with an additional field list). For users list display purpose.
#'
#' @export
list_collections <- function(collection_ids = NULL, fields = NULL) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/collections", query_string(collection_ids = collection_ids, fields = fields))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
