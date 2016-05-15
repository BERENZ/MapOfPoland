#' Simple function to plot data on map of Poland
#'
#' This function
#'
#' @param data - data.frame with id and variables for plot
#' @param id - id for spatial units
#' @param var - variable to be plotted
#' @param maptype - administrative level
#' @param higher_level - whether to include higher level
#'
#' @return ggplot2
#'
#' @keywords ggplot2
#'
#' @export
#'
#' @examples
#' # data(lau2)
#' #


fast_ggmap <- function(data,
                       id,
                       var,
                       maptype = 'powiat',
                       higher_level = T) {
  if (maptype == 'gmi') {
    data_map <- fortify(MapOfPoland::lau2, region = "jpt_kod_je")
  }

  if (maptype == 'powiat') {
    data_map <- fortify(MapOfPoland::lau1, region = "jpt_kod_je")
  }

  if (maptype == 'podreg_66') {
    data_map <- fortify(MapOfPoland::nts3_66, region = "jpt_kod_je")
  }

  if (maptype == 'podreg_72') {
    data_map <- fortify(MapOfPoland::nts3_72, region = "jpt_kod_je")
  }

  if (maptype == 'woj') {
    data_map <- fortify(MapOfPoland::nts2, region = "jpt_kod_je")
  }

  if (maptype == 'region') {
    data_map <- fortify(MapOfPoland::nts1, region = "jpt_kod_je")
  }

  data_map <- left_join(x = data_map,
                        y = data,
                        by = c('id' = id))

  ## normal map

  p1 <- ggplot() +
    geom_polygon(
      data = data_map,
      aes_string(
        x = 'long',
        y = 'lat',
        group = 'group',
        fill = var
      ),
      color = "black",
      size = 0.25,
    ) +
    theme_nothing(legend = TRUE) +
    coord_map()

  ## add higher level
  if (higher_level) {
    if (maptype != 'woj') {
      woj <- fortify(MapOfPoland::nts2, region = "jpt_kod_je")

      p1 <- p1 +
        geom_polygon(
          data = woj,
          aes(x = long,
              y = lat,
              group = group),
          color = "black",
          size = 1,
          fill = NA
        ) +
        theme_nothing(legend = TRUE)
    }
  }

  return(p1)
}
