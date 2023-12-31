# Automatically generated. Do not edit this file.
#' Prediction Request
#' 
#' A list defining a Prediction Request
#' 
#' @param project_id \[integer, required\] The destination project, of which objects will be predicted.
#' @param source_project_ids \[vector of integer, required\] The source projects, objects in them will serve as reference.
#' @param learning_limit \[integer\] When set (to a positive value), there will be this number  of objects, _per category_, in the learning set.
#' @param features \[vector of string, required\] The object features AKA free column, to use in the algorithm. Features must be common to all projects, source ones and destination one.
#' @param categories \[vector of integer, required\] In source projects, only objects validated with these categories will be considered.
#' @param use_scn \[boolean\] Use extra features, generated using the image, for improving the prediction.
#' @param pre_mapping \[list, required\] Categories in keys become value one before launching the ML algorithm. Any unknown value is ignored.
#' 
#' @export
PredictionReq <- function(project_id, source_project_ids, learning_limit=NULL, features, categories, use_scn=NULL, pre_mapping) {
  body <- list(
    project_id=project_id,
    source_project_ids=source_project_ids,
    learning_limit=learning_limit,
    features=features,
    categories=categories,
    use_scn=use_scn,
    pre_mapping=pre_mapping
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
