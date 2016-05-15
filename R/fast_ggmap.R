

fast_ggmap <- function(data,
                       id,
                       var,
                       maptype = 'powiat',
                       higher_level = T) {


  if (maptype == 'gmi') {
    data(lau2, package = 'MapOfPoland')
    data_map <- fortify(lau2, region="jpt_kod_je")
  }

  if (maptype == 'powiat') {
    data(lau1, package = 'MapOfPoland')
    data_map <- fortify(lau1, region="jpt_kod_je")
  }

  if (maptype == 'woj') {
    data(nts2, package = 'MapOfPoland')
    data_map <- fortify(nts2, region="jpt_kod_je")
  }

  data_map <- left_join(x = data_map,
                        y = data,
                        by = c( 'group' = id))

  ## normal map

  p1 <- ggplot() +
    geom_polygon(
      data = data_map,
      aes_string(x = long,
                 y = lat,
                 group = group),
      color = "black",
      size = 0.25,
      fill = var
    ) +
    theme_nothing(legend = TRUE) +
    coord_map()

  ## add higher level
  if (higher_level) {
    if (maptype != 'woj') {
      data(nts2, package = 'MapOfPoland')
      woj <- fortify(nts2, region="jpt_kod_je")

      p1 <- p1 +
        geom_polygon(
          data = woj,
          aes_string(x = long,
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
