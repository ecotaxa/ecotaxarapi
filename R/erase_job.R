# Generated automatically. See README before editing.

#' Erase Job
#'
#' **Delete the job** from DB, with associated storage. Return **NULL upon success.** If the job is running then kill it. 🔒 The job must be accessible to current user.
#'
#' @param job_id integer; Internal, the unique numeric id of this job.
#'
#' @export
erase_job <- function(job_id) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "jobs", job_id) %>%
      httr2::req_method("DELETE") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
