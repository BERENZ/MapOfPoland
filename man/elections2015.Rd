\name{elections2015}
\alias{elections2015}
\docType{data}
\title{
Results of presidential elections 2015 in Poland
}
\description{
Dataset contains result of presidential elections 2015 in Poland on LAU2 level.
}

\details{
nts2 = NTS2 name,

lau2 = LAU2 name,

code = TERYT code for LAU2,

no_citizens = Number of citizens allowed to vote,

no_of_cards = Number of cards,

no_of_unused_cards = Number of unused cards,

cards_given = Number of cards given to voters,

cards_invalid = Total number of invalid voting cards,

cards_valid = Total number of valid voting cards,

votes_invalid = Total number of invalid votes,

votes_valid = Total number of valid votes,

candidate = candidate code,

number_of_votes = Total number of votes given to candidate

round = Number of round (1, 2)

Codes for candidates:

K1 = Grzegorz Michał Braun,
K2 = Andrzej Sebastian Duda,
K3 = Adam Sebastian Jarubas,
K4 = Bronisław Maria Komorowski,
K5 = Janusz Ryszard Korwin-Mikke,
K6 = Marian Janusz Kowalski,
K7 = Paweł Piotr Kukiz,
K8 = Magdalena Agnieszka Ogórek,
K9 = Janusz Marian Palikot,
K10 = Paweł Jan Tanajno,
K11 = Jacek Wilk.
}

\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
\url{http://prezydent2015.pkw.gov.pl/319_Pierwsze_glosowanie}
\url{http://prezydent2015.pkw.gov.pl/325_Ponowne_glosowanie}
}
\examples{
library(dplyr)
glimpse(elections2015)

# Observations: 361621
# Variables:
# $ nts2               (chr) "dolnośląskie", "dolnośląskie", "dolnośląskie", "dolnośląskie...
# $ lau2               (chr) "m. Bolesławiec", "m. Bolesławiec", "m. Bolesławiec", "m. Bol...
# $ code               (chr) "020101", "020101", "020101", "020101", "020101", "020101", "...
# $ no_citizens        (dbl) 1542, 1369, 1510, 1523, 1492, 1480, 1485, 1463, 1520, 1560, 1...
# $ no_of_cards        (dbl) 1300, 1200, 1300, 1302, 1298, 1301, 1302, 1300, 1301, 1301, 1...
# $ no_of_unused_cards (dbl) 632, 467, 551, 521, 588, 731, 497, 445, 598, 471, 540, 507, 5...
# $ cards_given        (dbl) 668, 733, 749, 781, 710, 570, 805, 855, 703, 830, 760, 793, 7...
# $ cards_invalid      (dbl) 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0...
# $ cards_valid        (dbl) 668, 733, 750, 781, 707, 570, 805, 855, 703, 830, 760, 796, 7...
# $ votes_invalid      (dbl) 1, 5, 8, 8, 6, 8, 6, 7, 5, 7, 0, 4, 3, 5, 1, 5, 2, 6, 5, 2, 1...
# $ votes_valid        (dbl) 667, 728, 742, 773, 701, 562, 799, 848, 698, 823, 760, 792, 7...
# $ candidate          (chr) "K1", "K1", "K1", "K1", "K1", "K1", "K1", "K1", "K1", "K1", "...
# $ number_of_votes    (dbl) 11, 7, 13, 8, 6, 6, 4, 2, 3, 7, 8, 14, 5, 15, 9, 7, 9, 6, 4, ...
# $ round              (dbl) 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1...

}
\keyword{datasets}
