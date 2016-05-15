MapOfPoland
===========

Map of Poland

Package consists of six maps and one function `fast_ggmap`:

1. NTS1 level - Regions (6 units)
2. NTS2 level - Województwa (16 units)
3. NTS3 level - Podregiony (66 units)
4. NTS3 level - Podregiony (72 units)
5. LAU1 level - Powiaty (380 units)
6. LAU2 level - Gminy (2481 units)

You can install the latest development version from github with:

``` r
if (packageVersion("devtools") < 1.6) {
install.packages("devtools")
}
devtools::install_github("BERENZ/MapOfPoland")
```

Details can be found on:

-   <http://stat.gov.pl/en/regional-statistics/nomenclature-nts-161/>
-   <http://ec.europa.eu/eurostat/web/nuts/local-administrative-units>

Source of maps: <http://www.codgik.gov.pl/index.php/darmowe-dane/prg.html>
