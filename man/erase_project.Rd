% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/erase_project.R
\name{erase_project}
\alias{erase_project}
\title{Erase Project}
\usage{
erase_project(project_id, only_objects = NULL)
}
\arguments{
\item{project_id}{integer; Internal, numeric id of the project.}

\item{only_objects}{boolean; If set, the project structure is kept, but emptied from any object, sample, acquisition and process.}
}
\description{
\strong{Delete the project.} Optionally, if "only_objects" is set, the project structure is kept, but emptied from any object, sample, acquisition and process. Otherwise, no trace of the project will remain in the database. \strong{Returns} the number of : \strong{deleted objects}, 0, \strong{deleated image rows} and \strong{deleated image files}.
}
