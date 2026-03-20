# Generated automatically. See README before editing.

#' Reply Job Question
#'
#' **Send answers to last question.** The job resumes after it receives the reply. Return **NULL upon success.** *Note: It's only about data storage here.* If the data is technically NOK e.g. not a JS object, standard 422 error should be thrown. If the data is incorrect from consistency point of view, the job will return in Asking state.
#'
#' @param job_id integer; Internal, the unique numeric id of this job.
#' @param reply_job_question object; NULL
#'
#' @export
reply_job_question <- function(job_id, reply_job_question) {
  handle_api_response(
    httr2::request(api_url()) %>%
      httr2::req_url_path("api", "jobs", job_id, "answer") %>%
      httr2::req_method("POST") %>%
      httr2::req_body_json(list(reply_job_question)) %>%
      httr2::req_auth_bearer_token(api_token()) %>%
      httr2::req_perform()
  )
}
