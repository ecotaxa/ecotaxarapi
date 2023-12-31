# Automatically generated. Do not edit this file.
#' TaxonModel
#' 
#' A list defining a TaxonModel
#' 
#' @param id \[integer, required\] The taxon/category IDs.
#' @param renm_id \[integer\] The advised replacement ID if the taxon/category is deprecated.
#' @param name \[string, required\] The taxon/category verbatim name.
#' @param type \[string, required\] The taxon/category type, 'M' for Morpho or 'P' for Phylo.
#' @param nb_objects \[integer, required\] How many objects are classified in this category.
#' @param nb_children_objects \[integer, required\] How many objects are classified in this category children (not itself).
#' @param display_name \[string, required\] The taxon/category display name.
#' @param lineage \[vector of string, required\] The taxon/category name of ancestors, including self, in first.
#' @param id_lineage \[vector of integer, required\] The taxon/category IDs of ancestors, including self, in first.
#' @param children \[vector of integer, required\] The taxon/category IDs of children.
#' 
#' @export
TaxonModel <- function(id, renm_id=NULL, name, type, nb_objects, nb_children_objects, display_name, lineage, id_lineage, children) {
  body <- list(
    id=id,
    renm_id=renm_id,
    name=name,
    type=type,
    nb_objects=nb_objects,
    nb_children_objects=nb_children_objects,
    display_name=display_name,
    lineage=lineage,
    id_lineage=id_lineage,
    children=children
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
