#' Simple function to plot data on map of Poland
#'
#' This function
#'
#' @param data - data.frame with id and variables for plot
#' @param id_var - id for spatial units
#' @param fill_var - variable to be plotted
#' @param maptype - administrative level
#' @param higher_level - whether to include higher level
#' @param viridis - whether to use
#' @param ... -dots
#'
#' @return ggplot2
#'
#' @keywords map
#'
#' @export
#'
#' @examples
#' # data(lau2)
#' #

fast_ggmap <- function(data,
                       id_var,
                       fill_var,
                       maptype = 'powiat',
                       higher_level = T,
                       viridis = T,
                       ...) {

  if (maptype == 'gmi') {
    data_map <- MapOfPoland::lau2
  }

  if (maptype == 'powiat') {
    data_map <- MapOfPoland::lau1
  }

  if (maptype == 'podreg_66') {
    data_map <- MapOfPoland::nts3_66
  }

  if (maptype == 'podreg_72') {
    data_map <- MapOfPoland::nts3_72
  }

  if (maptype == 'woj') {
    data_map <- MapOfPoland::nts2
  }

  if (maptype == 'region') {
    data_map <- MapOfPoland::nts1
  }

  data_map <- left_join(x = data_map,
                        y = data,
                        by = c('id' = id_var))

  ## normal map

  p1 <- ggplot() +
    geom_polygon(
      data = data_map,
      aes_string(
        x = 'long',
        y = 'lat',
        group = 'group',
        fill = fill_var
      ),
      color = "black",
      size = 0.25) +
    theme_nothing(legend = TRUE) +
    coord_map()

  ## add higher level
  if (higher_level) {
    if (maptype != 'woj') {
      woj <- MapOfPoland::nts2

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

  if (viridis) {
    p1 <- p1 + scale_fill_viridis(...)
  }


  return(p1)
}
