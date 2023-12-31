% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reclassif_stats.R
\name{reclassif_stats}
\alias{reclassif_stats}
\title{Reclassif Stats}
\usage{
reclassif_stats(taxa_ids)
}
\arguments{
\item{taxa_ids}{string; String containing the list of one or more taxa id separated by non-num char.}
}
\description{
Dig into reclassification logs and, for each input category id, \strong{determine the most chosen target category, excluding the advised one.} By convention, if nothing relevant is found, the input category itself is returned. So one can expect that the returned list has the same size as the required one.
}
