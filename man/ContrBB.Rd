\name{ContrBB}
\alias{ContrBB}
\encoding{latin1}
\title{BEANPLOTS AND BOXPLOTS OF CONTRIBUTION OF FACTORS}
\description{It performs beanplots and boxplots with the contribution of environmental factors to explain the distribution of species.}
\usage{
ContrBB(data, vars, Level=NULL, Taxon=NULL, graph="beanplot", order="decreasing",
side="no", beanlines="median", what=c(1,1,1,1), ll=NULL, border="black", OrderCat=NULL,
LabelCat=NULL, XLAB="Variables", YLAB="Percentage of contribution to instability index",
COLOR=NULL, LEGEND=NULL, MTEXT= NULL, TEXT=NULL, ResetPAR=TRUE, PAR=NULL,
BEANPLOT=NULL, BOXPLOT=NULL)
}
\arguments{
  \item{data}{Data file, which it may be obtained using DataManager of ModestR \url{http://www.ipez.es/ModestR}. See details section for the explanation of the format of the data.}
  \item{vars}{Environmental factors.}
  \item{Level}{Optionaly, a taxonomic level may be selected, i.e., class, family, order, genus or species.}
  \item{Taxon}{Optionally, it is possible to work only with a selected species, just specifying the name of the taxon or taxa selected within the taxonomic level selected in the argument \emph{Level}, i.e., name of the order, family, etc. Can be a vector, so several taxa.}
  \item{graph}{Type of plot: "beanplot" or "boxplot".}
  \item{order}{If it is NULL the categories are ordered as found in the argument \emph{vars}, if it is "increasing" are ordered from lesser to greater median or mean according to the method selected in the argument \emph{beanlines}, if it is "decreasing" are ordered from greater to lesser median or mean, if it is "alhaAZ" are ordered from A to Z and if it is "alphaZA" from Z to A. If the method selected in \emph{beanlines="quantiles"}, it is used the median for both "increasing" and "decreasing".}
  \item{side}{The side on which the beans are plot. Default is "no", for symmetric beans. The options "first", "second" and "both" are also supported.}
  \item{beanlines}{The method used for determining the average bean lines. Default is value "median", and other options are "mean" and "quantiles".}
  \item{what}{A vector of four booleans describing what to plot. In the following order, these booleans stand for the total average line, the beans, the bean average, and the beanlines. For example, \emph{what=c(0,0,0,1)} produces a \link[graphics]{stripchart}.}
  \item{ll}{Length of the beanline per point found.}
  \item{border}{Color of the border around the bean.}
  \item{OrderCat}{It allows to specify a vector with the order in which the categories are shown. If this argument is specified, the argument \emph{order} is not taken into account.}
  \item{LabelCat}{It allows to specify a vector with the names of the categories.}
  \item{XLAB}{Legend of X axis.}
  \item{YLAB}{Legend of Y axis.}
  \item{COLOR}{Vector with the color of the categories or just one color for all categories.}
  \item{LEGEND}{It allows to include a legend to the graph.}
  \item{MTEXT}{It allows to add text on the margins of the graph.}
  \item{TEXT}{It allows to add text in any area of the inner part of the graph.}
  \item{ResetPAR}{If it is FALSE, the default condition of the function PAR is not placed and maintained those defined by the user in previous graphics.}
  \item{PAR}{It accesses the function PAR, allowing to modify different aspects of the graph.}
  \item{BEANPLOT}{It allows to specify the characteristics of the function \link[beanplot]{beanplot} of the beanplot package (Kampstra, 2008; Kampstra, 2015).}
  \item{BOXPLOT}{It allows to specify the characteristics of the function \link[graphics]{boxplot} of graphics package.}
}
\value{A beanplot or boxplot is obtained.}  
\details{
The CSV file required in the argument \emph{data} has the following format: class, order, family, genus and species, along with the contribution of the environmental variables. This file may be obtained using ModestR (García-Roselló et al., 2013; available at the web site \url{http://www.ipez.es/ModestR} using the following menu: Export/Export checked maps/To RWizard Applications/To SPEDInstab. The default name of this file obtained from ModestR is "Contribution.CSV".

\strong{FUNCTIONS}

The beanplot is performed with the function \link[beanplot]{beanplot} of the beanplot package (Kampstra, 2008; Kampstra, 2015). The boxplot is performed with the function \link[graphics]{boxplot} of graphics package. 

\strong{EXAMPLE}

In the example, it was estimated the relative contribution of some factors on the distribution of some freshwater species (Guisande et al., 2010; Pelayo-Villamil et al., 2015).
\tabular{c}{
\figure{F1}{options: width=5.5in}
}
}
\references{
García-Roselló, E., Guisande, C., González-Dacosta, J., Heine, J., Pelayo-Villamil, P., Manjarrés-Hernández, A., Vaamonde, A. & Granado-Lorencio, C. (2013) ModestR: a software tool for managing and analyzing species distribution map databases. \emph{Ecography}, 36, 1202-1207.

Guisande, C., Manjarrés-Hernández, A., Pelayo-Villamil, P., Granado-Lorencio, C., Riveiro, I., Acuña, A., Prieto-Piraquive, E., Janeiro, E., Matías, J.M., Patti, C., Patti, B., Mazzola, S., Jiménez, S., Duque, V. & Salmerón, F. (2010) IPez: An expert system for the taxonomic identification of fishes based on machine learning techniques. \emph{Fisheries Research}, 102, 240-247.

Kampstra, P (2008). Beanplot: A Boxplot Alternative for Visual Comparison of Distributions. \emph{Journal of Statistical Software, Code Snippets}, 28: 1-9.

Kampstra, P (2015) Visualization via Beanplots (like Boxplot/Stripchart/Violin Plot). R package version 1.2. Available at: \url{https://CRAN.R-project.org/package=beanplot}.

Pelayo-Villamil, P., Guisande, C., Vari, R.P., Manjarrés-Hernández, A., García-Roselló, E., González-Dacosta, J. et al. (2015) Global diversity patterns of freshwater fishes - potential victims of their own success. \emph{Diversity and Distributions}, 21, 345-356.
}
\examples{

data(FishFC)

ContrBB(data=FishFC, vars=c("Altitude","Aspect","BIO1","BIO12", "BIO14","BIO15","BIO18",
"BIO19","BIO2","BIO3","BIO4","BIO8","Pop","TPP","Slope","TH24","VI"), graph="boxplot")
}
\keyword{ContrBB}
