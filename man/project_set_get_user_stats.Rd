% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/project_set_get_user_stats.R
\name{project_set_get_user_stats}
\alias{project_set_get_user_stats}
\title{Project Set Get User Stats}
\usage{
project_set_get_user_stats(ids)
}
\arguments{
\item{ids}{string; String containing the list of one or more id separated by non-num char. \strong{If several ids are provided}, one stat record will be returned per project.}
}
\description{
\strong{Returns projects user statistics}, i.e. a summary of the work done by users in the required projects. The returned values are a detail per project, so size of input list equals size of output list.
}
