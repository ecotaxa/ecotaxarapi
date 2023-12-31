# Automatically generated. Do not edit this file.
#' ProjectTaxoStatsModel
#' 
#' A list defining a ProjectTaxoStatsModel
#' 
#' @param projid \[integer, required\] The project id.
#' @param used_taxa \[vector of integer\] The taxa/category ids used inside the project. An id of -1 means some unclassified objects.
#' @param nb_unclassified \[integer, required\] The number of unclassified objects inside the project.
#' @param nb_validated \[integer, required\] The number of validated objects inside the project.
#' @param nb_dubious \[integer, required\] The number of dubious objects inside the project.
#' @param nb_predicted \[integer, required\] The number of predicted objects inside the project.
#' 
#' @export
ProjectTaxoStatsModel <- function(projid, used_taxa=NULL, nb_unclassified, nb_validated, nb_dubious, nb_predicted) {
  body <- list(
    projid=projid,
    used_taxa=used_taxa,
    nb_unclassified=nb_unclassified,
    nb_validated=nb_validated,
    nb_dubious=nb_dubious,
    nb_predicted=nb_predicted
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
