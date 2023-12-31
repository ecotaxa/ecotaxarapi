# Automatically generated. Do not edit this file.
#' Simple import request Model
#' 
#' A list defining a Simple import request Model
#' 
#' @param source_path \[string, required\] Source path on server, to zip or plain directory.
#' @param values \[list, required\] :imgdate, imgtime, latitude, longitude, depthmin, depthmax, taxolb, userlb, status
#' @param possible_values \[vector of string\] Possible Values
#' 
#' @export
SimpleImportReq <- function(source_path, values, possible_values=NULL) {
  body <- list(
    source_path=source_path,
    values=values,
    possible_values=possible_values
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
