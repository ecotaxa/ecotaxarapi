# Generated automatically. See README before editing.

#' Erase Object Set
#'
#' **Delete the objects with given object ids.** **Returns** the number of : **deleted objects**, 0, **deleated image rows** and **deleated image files**. 🔒 Current user needs *Manage* right on all projects of specified objects.
#'
#' @param object_ids_list array; The list of object ids.
#'
#' @export
erase_object_set <- function(object_ids_list) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/object_set/")) %>%
      httr2::req_method("DELETE") %>%
      httr2::req_body_json(list(object_ids_list)) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
