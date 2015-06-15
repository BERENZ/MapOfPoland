\name{NTS2}
\alias{NTS2}
\docType{data}
\title{
The Nomenclature of Territorial Units for Statistical Purposes (NTS) Level 2
}
\description{
The Nomenclature of Territorial Units for Statistical Purposes (NTS) Level 2 – voivodships
}
\usage{data("NTS2")}
\details{
Dataset contains following columns:

id - denoting plot order

name - denoting name of NTS2 unit

code - denote NTS2 code

coord_x, coord_y - denote coordinates of centroids
}
\source{
Poland: \url{http://stat.gov.pl/en/regional-statistics/nomenclature-nts-161/}

Eurostat: \url{http://ec.europa.eu/eurostat/web/nuts/local-administrative-units}

Source of maps: \url{http://www.codgik.gov.pl/index.php/darmowe-dane/prg.html}
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(NTS2)
# NTS2_df <- as.data.frame(NTS2)
# head(NTS2_df)
}
\keyword{datasets}
