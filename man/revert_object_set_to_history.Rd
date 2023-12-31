% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/revert_object_set_to_history.R
\name{revert_object_set_to_history}
\alias{revert_object_set_to_history}
\title{Revert Object Set To History}
\usage{
revert_object_set_to_history(
  project_id,
  dry_run,
  target = NULL,
  ProjectFilters
)
}
\arguments{
\item{project_id}{integer; Internal, numeric id of the project.}

\item{dry_run}{boolean; If set, then no real write but consequences of the revert will be replied.}

\item{target}{integer; Use null/None for reverting using the last annotation from anyone, or a user id for the last annotation from this user.}

\item{ProjectFilters}{Output of ProjectFilters(); How to reduce project data.}
}
\description{
\strong{Revert all objects for the given project}, with the filters, to the target.
}
