# Automatically generated. Do not edit this file.
#' JobModel
#' 
#' A list defining a JobModel
#' 
#' @param params \[list\] Creation parameters.
#' @param result \[list\] Final result of the run.
#' @param errors \[vector of string\] The errors seen during last step.
#' @param question \[list\] The data provoking job move to Asking state.
#' @param reply \[list\] The data provided as a reply to the question.
#' @param inside \[list\] Internal state of the job.
#' @param id \[integer, required\] Job unique identifier.
#' @param owner_id \[integer, required\] The user who created and thus owns the job. 
#' @param type \[string, required\] The job type, e.g. import, export... 
#' @param state \[string\] What the job is doing. Could be 'P' for Pending (Waiting for an execution thread), 'R' for Running (Being executed inside a thread), 'A' for Asking (Needing user information before resuming), 'E' for Error (Stopped with error), 'F' for Finished (Done).
#' @param step \[integer\] Where in the workflow the job is. 
#' @param progress_pct \[integer\] The progress percentage for UI. 
#' @param progress_msg \[string\] The message for UI, short version. 
#' @param creation_date \[string, required\] The date of creation of the Job, as text formatted according to the ISO 8601 standard.
#' @param updated_on \[string, required\] Last time that anything changed in present line. 
#' 
#' @export
JobModel <- function(params=NULL, result=NULL, errors=NULL, question=NULL, reply=NULL, inside=NULL, id, owner_id, type, state=NULL, step=NULL, progress_pct=NULL, progress_msg=NULL, creation_date, updated_on) {
  body <- list(
    params=params,
    result=result,
    errors=errors,
    question=question,
    reply=reply,
    inside=inside,
    id=id,
    owner_id=owner_id,
    type=type,
    state=state,
    step=step,
    progress_pct=progress_pct,
    progress_msg=progress_msg,
    creation_date=creation_date,
    updated_on=updated_on
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
