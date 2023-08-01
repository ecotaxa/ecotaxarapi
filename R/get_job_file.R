# Generated automatically. See README before editing.

#' Get Job File
#'
#' **Return the file produced by given job.** 🔒 The job must be accessible to current user.
#'
#' @param job_id integer; Internal, the unique numeric id of this job.
#'
#' @export
get_job_file <- function(job_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/jobs/", job_id, "/file")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
