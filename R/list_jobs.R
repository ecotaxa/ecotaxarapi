# Generated automatically. See README before editing.

#' List Jobs
#'
#' **Return the jobs** for current user, or all of them if admin is asked for.
#'
#' @param for_admin boolean; If FALSE return the jobs for current user, else return all of them.
#'
#' @export
list_jobs <- function(for_admin) {
  request_body <- list()
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/jobs/", query_string(for_admin = for_admin))) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
