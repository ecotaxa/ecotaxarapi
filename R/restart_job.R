# Generated automatically. See README before editing.

#' Restart Job
#'
#' **Restart the job related to the given id.** Return **NULL upon success.** 🔒 The job must be in a restartable state, and be accessible to current user.
#'
#' @param job_id integer; Internal, the unique numeric id of this job.
#'
#' @export
restart_job <- function(job_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/jobs/", job_id, "/restart")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
