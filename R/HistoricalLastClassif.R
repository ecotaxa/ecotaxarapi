# Automatically generated. Do not edit this file.
#' HistoricalLastClassif
#' 
#' A list defining a HistoricalLastClassif
#' 
#' @param objid \[integer\] The object Id.
#' @param classif_id \[integer\] The classification Id.
#' @param histo_classif_date \[string\] The classification date.
#' @param histo_classif_type \[string\] The type of classification. Could be **A** for Automatic or **M** for Manual.
#' @param histo_classif_id \[integer\] The classification Id.
#' @param histo_classif_qual \[string\] The classification qualification. Could be **P** for predicted, **V** for validated or **D** for Dubious.
#' @param histo_classif_who \[integer\] The user who manualy classify this object.
#' 
#' @export
HistoricalLastClassif <- function(objid=NULL, classif_id=NULL, histo_classif_date=NULL, histo_classif_type=NULL, histo_classif_id=NULL, histo_classif_qual=NULL, histo_classif_who=NULL) {
  body <- list(
    objid=objid,
    classif_id=classif_id,
    histo_classif_date=histo_classif_date,
    histo_classif_type=histo_classif_type,
    histo_classif_id=histo_classif_id,
    histo_classif_qual=histo_classif_qual,
    histo_classif_who=histo_classif_who
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
