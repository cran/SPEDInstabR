\name{ContrMap}
\alias{ContrMap}
\encoding{latin1}
\title{CONTRIBUTION MAPS}
\description{It creates global geographic ESRI ASCII raster files with the mean relative contribution of the factors (considering all species present in the cell).}
\usage{
ContrMap(data, vars, Species, Level=NULL, Taxon=NULL, jpg=FALSE)
}
\arguments{
  \item{data}{Data file, which it may be obtained using DataManager of ModestR. See details section of the function \link{ContrBB} for the explanation of the format of the data. IMPORTANT: It is also necessary the ESRI ASCII raster files with the distribution of the species obtained from ModestR, which are saved by default in a folder named "Species". Therefore, the working directory must be this folder with the ESRI ASCII raster files of the distribution of the species.}
  \item{vars}{Factors.}
  \item{Species}{Variable with the name of the species.}
  \item{Level}{Optionally, a taxonomic level may be selected, i.e., class, family, order, genus or species.}
  \item{Taxon}{Optionally, it is possible to work only with a selected species, just specifying the name of the taxon or taxa selected within the taxonomic level selected in the argument \emph{Level}, i.e., name of the order, family, etc. Can be a vector, so several taxa.}
  \item{jpg}{If TRUE the plots are exported to jpg files instead of using the windows device.}
}
\value{ESRI ASCII raster files are obtained for each factor selected in the argument \emph{vars}. Each raster cell is the mean relative contribution of the factor considering all species present in the cell. This raster map be displayed with MapMaker of ModestR (García-Roselló et al., 2013), the function \link{Rmap} or any GIS software.}  
\details{

\strong{FUNCTIONS}

The raster file is created using the functions \link[raster]{raster}, \link[raster]{writeRaster} and \link[raster]{setValues} of the package raster (Hijmans et al., 2015).
}
\references{
Hijmans, R.J., Etten, J. van, Cheng, J., Mattiuzzi, M., Sumner, M., Greenberg, J.A., Lamigueiro, O.P., Bevan, A., Racine, E.B., Shortridge, A., (2015) Geographic Data Analysis and Modeling. R package version 2.5-8. Available at: \url{https://CRAN.R-project.org/package=raster}.

}
\keyword{ContrMap}
