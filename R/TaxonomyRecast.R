# Automatically generated. Do not edit this file.
#' TaxonomyRecast
#' 
#' A list defining a TaxonomyRecast
#' 
#' @param from_to \[list, required\] Mapping from seen taxon (key) to output replacement one (value). Use a null replacement to _discard_ the present taxon. Note: keys are strings.
#' @param doc \[list\] To keep memory of the reasons for the above mapping. Note: keys are strings.
#' 
#' @export
TaxonomyRecast <- function(from_to, doc=NULL) {
  body <- list(
    from_to=from_to,
    doc=doc
  )
  body[sapply(body, is.null)] <- NULL
  return(body)
}
