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
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "jobs", job_id, "") %>%
      httr2::req_method("GET") %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
