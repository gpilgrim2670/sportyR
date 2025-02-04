% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/swimming-nfhs-features.R
\name{geom_nfhs_swimming}
\alias{geom_nfhs_swimming}
\title{Create a ggplot2 instance that represents a regulation pool,
with the center of the pool corresponding to (0, 0)}
\usage{
geom_nfhs_swimming(
  course,
  lane_width = 7/3,
  number_of_lanes = 8,
  overflow_channels = 1.5,
  rotate = FALSE,
  rotation_dir = "ccw",
  caption_color = "#707372",
  background_color = NULL,
  ...
)
}
\arguments{
\item{course}{The length of the pool as "SCM" or "SCY"}

\item{lane_width}{The width of an individual lane}

\item{number_of_lanes}{The number of lanes in the pool}

\item{overflow_channels}{Width of overflow channels (if they exist)}

\item{rotate}{A boolean indicating whether or not the surface representation
needs to be rotated. Default: \code{FALSE}}

\item{rotation_dir}{A string indicating which direction to rotate the surface
representation. Default: \code{'ccw'}}

\item{caption_color}{A hexadecimal string representing the color to use for
the plot's caption. Default: '#707372' (grey)}

\item{background_color}{A hexadecimal string representing the color to use
for the plot's background. Default: \code{NULL}}

\item{...}{Additional arguments to pass to the function. These should be the
colors to pass to the \code{nfhs_swimming_features_set_colors()} function}
}
\value{
A ggplot2 instance that represents a regulation pool
}
\description{
Create a ggplot2 instance that represents a regulation pool,
with the center of the pool corresponding to (0, 0)
}
\author{
Gregory A. Pilgrim
}
