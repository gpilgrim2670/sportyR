% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/swimming-fina-features.R
\name{fina_swimming_feature_lane_lines_start_15m}
\alias{fina_swimming_feature_lane_lines_start_15m}
\title{Generate the data frame for the points that comprise the lane line bouy marking 15m from the start end.}
\usage{
fina_swimming_feature_lane_lines_start_15m(
  course = "LCM",
  number_of_lanes = 8,
  overflow_channels = 0.2,
  rotate = FALSE,
  rotation_dir = "ccw"
)
}
\arguments{
\item{course}{The length of the pool as "SCM" or "LCM"}

\item{number_of_lanes}{The number of lanes in the pool}

\item{overflow_channels}{Width of overflow channels (if they exist) in meters}

\item{rotate}{A boolean indicating whether or not this feature needs to be
rotated. Default: \code{FALSE}}

\item{rotation_dir}{A string indicating which direction to rotate the
feature. Default: \code{'ccw'}}
}
\value{
A data frame containing the points that comprise the lane line bouy marking 15m at the start end
}
\description{
Generate the data frame for the points that comprise the lane line bouy marking 15m from the start end.
}
\author{
Gregory A. Pilgrim
}
