# Generated automatically. See README before editing.

#' List Jobs
#'
#' **Return the jobs** for current user, or all of them if admin is asked for.
#'
#' @param for_admin boolean; If FALSE return the jobs for current user, else return all of them.
#'
#' @export
list_jobs <- function(for_admin) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "jobs", "") %>%
      httr2::req_url_query(for_admin = for_admin) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
