% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/add_taxon_in_central.R
\name{add_taxon_in_central}
\alias{add_taxon_in_central}
\title{Add Taxon In Central}
\usage{
add_taxon_in_central(
  name,
  parent_id,
  taxotype,
  creator_email,
  source_desc = NULL,
  source_url = NULL
)
}
\arguments{
\item{name}{string; The taxon/category verbatim name.}

\item{parent_id}{integer; It's not possible to create a root taxon.}

\item{taxotype}{string; The taxon type, 'M' for Morpho or 'P' for Phylo.}

\item{creator_email}{string; The email of the taxo creator.}

\item{source_desc}{string; The source description.}

\item{source_url}{string; The source url.}
}
\description{
\strong{Create a taxon} on EcoTaxoServer. 🔒 Logged user must be manager (on any project) or application admin.
}
