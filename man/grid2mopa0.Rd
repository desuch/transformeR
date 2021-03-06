% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/grid2mopa.R
\name{grid2mopa0}
\alias{grid2mopa0}
\title{Transform a grid or multigrid to a set of predictors to be used for modeling}
\usage{
grid2mopa0(grid, varname = "variable", crs = NA)
}
\arguments{
\item{grid}{Input grid or multigrid without member or runtime dimensions. Grid returned by function 
\code{\link[transformeR]{climatology}} are also supported.}

\item{varname}{Variable name of the grid}

\item{crs}{Optional (Default NA). Character or object of class CRS. PROJ.4 type description of a Coordinate Reference System (map projection). 
If this argument is missing, and the x coordinates are withing -360 .. 360 and the y coordinates are 
within -90 .. 90, "+proj=longlat +datum=WGS84" is used. Also see under Details if x is a character (filename).}
}
\value{
A raster for grid objects and a RasterStack for multigrids.
}
\description{
Transform a grid or multigrid to collections of raster files for modeling
with the \code{mopa} package.
}
\examples{
#' # Maximum July surface temp forecast climatology
data("CFS_Iberia_tas")
# Aggregate all members and compute climatology
t.clim <- climatology(CFS_Iberia_tas, by.member = FALSE)
plotClimatology(t.clim)
t.ras <- grid2mopa0(t.clim)
require(sp)
spplot(t.ras)
}
\seealso{
\code{\link[transformeR]{climatology}}; \code{\link[loadeR]{loadGridData}}
}
\author{
M. Iturbide
}
