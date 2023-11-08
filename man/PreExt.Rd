\name{PreExt}
\alias{PreExt}
\encoding{latin1}
\title{COMPARISON OF THE FREQUENCIES OF A FACTOR BETWEEN PRESENCES AND THE EXTENT}
\description{It performs a plot comparing the mean and standard deviation of the frequencies between the cells of presence and the cells of the extent.}
\usage{
PreExt(data, var, envar, Interval, Interval.Value, Pre, Extent, Level=NULL,
Taxon=NULL, ResetPAR=TRUE, PAR=NULL, PLOT=NULL, XLAB=NULL, YLAB="Frequency",
MAIN=NULL, COLOR=c("#00FF0032","#FF000032"), XLIM=NULL, YLIM=NULL, TYPE="l",
LTY=c(1,2), PCH=NULL, LEGEND=NULL, AXIS=NULL, MTEXT= NULL, TEXT=NULL)
}
\arguments{
  \item{data}{Data file, which it may be obtained using DataManager of ModestR. See details section for the explanation of the format of the data.}
  \item{var}{Variable with the names of the factors.}
  \item{envar}{Factor.}
  \item{Interval}{Variable with the intervals.}
  \item{Interval.Value}{Variable with the values of the intervals.}
  \item{Pre}{Values of intervals for the presences.}
  \item{Extent}{Values of intervals for the extent.}
  \item{Level}{Optionally, a taxonomic level may be selected, i.e., class, family, order, genus or species.}
  \item{Taxon}{Optionally, it is possible to work only with a selected species, just specifying the name of the taxon or taxa selected within the taxonomic level selected in the argument \emph{Level}, i.e., name of the order, family, etc. Can be a vector, so several taxa.}
  \item{ResetPAR}{If it is FALSE, the default condition of the function PAR is not placed and maintained those defined by the user in previous graphics.}
  \item{PAR}{It accesses the function PAR, allowing to modify different aspects of the graph.}
  \item{PLOT}{It allows to specify the characteristics of the function \link[graphics]{plot.default}.}
  \item{XLAB}{Legend of X axis.}
  \item{YLAB}{Legend of Y axis.}
  \item{MAIN}{Main title of the plot. Default is the name of the environmental factor selected in the argument \emph{envar}.}
  \item{COLOR}{Vector with the color of the presences and absences.}
  \item{XLIM}{Vector with the limits of the X axis.}
  \item{YLIM}{Vector with the limits of the Y axis.}
  \item{TYPE}{Type of plot. The following values are possible: "p" for points, "l" for lines, "b" for both points and lines, "c" for empty points joined by lines, "o" for overplotted points and lines, "s" and "S" for stair steps and "h" for histogram-like vertical lines. Finally, "n" does not produce any points or lines.}
  \item{LTY}{The line type. Line types can either be specified as an integer (0=blank, 1=solid (default), 2=dashed, 3=dotted, 4=dotdash, 5=longdash, 6=twodash) or as one of the character strings "blank", "solid", "dashed", "dotted", "dotdash", "longdash", or "twodash", where "blank" uses invisible lines (i.e., does not draw them).}
  \item{PCH}{Graphic symbol.}
  \item{LEGEND}{It allows to include a legend to the graph.}
  \item{AXIS}{It allows to add axes to the graph.}
  \item{MTEXT}{It allows to add text on the margins of the graph.}
  \item{TEXT}{It allows to add text in any area of the inner part of the graph.}
}
\value{A plot is obtained.}  
\details{
The CSV file required in the argument \emph{data} has the following format: class, order, family, genus and species, along with the frequencies for presence and for the extent. This file may be obtained using ModestR (Garcia-Rosello et al., 2013; available at the web site using the following menu: Export checked maps/To RWizard Applications/To SPEDInstab. The default name of this file obtained from ModestR is "Instability.CSV".

\strong{FUNCTIONS}

The plot is performed with the function \link[graphics]{plot.default} of base graphics package 

\strong{EXAMPLE}

In the example, it was estimated the instability index for several species of the orders Amiiformes and Perciformes (Guisande et al., 2010; Pelayo-Villamil et al., 2015). It is shown the percentiles of the variable altitude for presence and the extent.
\tabular{c}{
\if{html}{\figure{F3.jpg}{options: width="50"}}
\if{latex}{\figure{F3.jpg}{options: width=3.5in}}}
}
\references{
Garcia-Rosello, E., Guisande, C., Gonzalez-Dacosta, J., Heine, J., Pelayo-Villamil, P., Manjarres-Hernandez, A., Vaamonde, A. & Granado-Lorencio, C. (2013) ModestR: a software tool for managing and analyzing species distribution map databases. \emph{Ecography}, 36, 1202-1207.

Guisande, C., Manjarres-Hernandez, A., Pelayo-Villamil, P., Granado-Lorencio, C., Riveiro, I., Acuña, A., Prieto-Piraquive, E., Janeiro, E., Matias, J.M., Patti, C., Patti, B., Mazzola, S., Jimenez, S., Duque, V. & Salmeron, F. (2010) IPez: An expert system for the taxonomic identification of fishes based on machine learning techniques. \emph{Fisheries Research}, 102, 240-247.

Pelayo-Villamil, P., Guisande, C., Vari, R.P., Manjarres-Hernandez, A., Garcia-Rosello, E., Gonzalez-Dacosta, J. et al. (2015) Global diversity patterns of freshwater fishes - potential victims of their own success. \emph{Diversity and Distributions}, 21, 345-356.
}
\examples{

data(Instability)

PreExt(data=Instability, var="Variable", envar="Altitude", Interval="Interval",
Interval.Value="Interval.Value", Pre="Presence.Prop", Extent="Extent.Prop",
XLAB="Altitude (m)")
}
\keyword{PreExt}
