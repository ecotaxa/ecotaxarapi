# Generated automatically. See README before editing.

#' Query Object Set Parents
#'
#' **Return object ids, with parent ones and projects** for the objects in given list.
#'
#' @param object_ids_list array; The list of object ids.
#'
#' @export
query_object_set_parents <- function(object_ids_list) {
  request_body <- list(object_ids_list = object_ids_list)
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/parents")) %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
