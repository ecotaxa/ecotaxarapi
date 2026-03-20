# Generated automatically. See README before editing.

#' Project Set Get User Stats
#'
#' **Returns projects user statistics**, i.e. a summary of the work done by users in the required projects. The returned values are a detail per project, so size of input list equals size of output list.
#'
#' @param ids string; String containing the list of one or more id separated by non-num char. **If several ids are provided**, one stat record will be returned per project.
#'
#' @export
project_set_get_user_stats <- function(ids) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "project_set", "user_stats") %>%
      httr2::req_url_query(ids = ids) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
