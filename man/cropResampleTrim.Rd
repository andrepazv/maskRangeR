% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/spatialUtils.R
\name{cropResampleTrim}
\alias{cropResampleTrim}
\title{Line two rasters or stacks or lists of rasters}
\usage{
cropResampleTrim(expertMap, maskListRaw)
}
\arguments{
\item{expertMap}{A binary map, either as a polygon or a raster.}

\item{maskListRaw}{A list of rasters, each corresponding to layers from which masks will eventually be made (in another function).}
}
\value{
a list
}
\description{
Obtain the same extents and resample to the finest resolution layer.
}
\details{
See Examples.
}
\examples{
r1 <- raster::raster(raster::extent(c(-72, -64, 41, 50)), res = c(0.008333333, 0.008333333))
raster::values(r1) <- (1:raster::ncell(r1))^2
coords <- dismo::randomPoints(r1, 4)
polyg <- sp::SpatialPolygons(list(sp::Polygons(list(sp::Polygon(coords)),1)))
r2 <- raster::raster(raster::extent(c(-72, -64, 41, 50)), res = c(0.008333333, 0.008333333))
raster::values(r2) <- (1:raster::ncell(r2))^3
r3 <- raster::raster(raster::extent(c(-72, -64, 41, 50)), res = c(0.008333333, 0.008333333))
raster::values(r3) <- (1:raster::ncell(r3))^0.5
maskListRaw <- list(r1, r2, r3)
cropResampleTrim(expertMap = polyg, maskListRaw = maskListRaw)

}
\author{
Cory Merow <cory.merow@gmail.com>,
}
