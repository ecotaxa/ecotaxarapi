# Generated automatically. See README before editing.

#' Erase Object Set
#'
#' **Delete the objects with given object ids.** **Returns** the number of : **deleted objects**, 0, **deleated image rows** and **deleated image files**. 🔒 Current user needs *Manage* right on all projects of specified objects.
#'
#'
#' @export
erase_object_set <- function() {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/")) %>%
      httr2::req_method("DELETE") %>%
      httr2::req_body_json(request_body) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
