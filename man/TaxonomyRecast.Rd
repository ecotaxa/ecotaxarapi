% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/TaxonomyRecast.R
\name{TaxonomyRecast}
\alias{TaxonomyRecast}
\title{TaxonomyRecast}
\usage{
TaxonomyRecast(from_to, doc = NULL)
}
\arguments{
\item{from_to}{[list, required] Mapping from seen taxon (key) to output replacement one (value). Use a null replacement to \emph{discard} the present taxon. Note: keys are strings.}

\item{doc}{[list] To keep memory of the reasons for the above mapping. Note: keys are strings.}
}
\description{
A list defining a TaxonomyRecast
}
