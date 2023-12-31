# Automatically generated. Do not edit this file.
#' PredictionRsp
#' 
#' A list defining a PredictionRsp
#' 
#' @param errors \[vector of string\] Showstopper problems found while preparing the prediction.
#' @param warnings \[vector of string\] Problems found while preparing the prediction.
#' @param job_id \[integer\] The created job, 0 if there were problems.
#' 
#' @export
PredictionRsp <- function(errors=NULL, warnings=NULL, job_id=NULL) {
  body <- list(
    errors=errors,
    warnings=warnings,
    job_id=job_id
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
