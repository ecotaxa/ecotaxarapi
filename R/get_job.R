# Generated automatically. See README before editing.

#' Get Job
#'
#' Returns **information about the job** corresponding to the given id.
#'
#' @param job_id integer; Internal, the unique numeric id of this job.
#'
#' @export
get_job <- function(job_id) {
  handle_api_response(
    httr2::request(base_url = paste0(api_url(), "/jobs/", job_id, "/")) %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
