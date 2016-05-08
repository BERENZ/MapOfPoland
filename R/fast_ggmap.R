

fast_ggmap <- function(data,
                       id,
                       var,
                       maptype = 'powiat',
                       higher_level = F) {
  require(MapOfPoland)
  
  
  if (maptype == 'powiat') {
    data(LAU1, package = 'MapOfPoland')
    
    data_map <- fortify(LAU1) %>%
      mutate(id = as.numeric(id)) %>%
      left_join(LAU1 %>%
                  as.data.frame() %>%
                  select(id, code) %>%
                  mutate(id = as.numeric(id))) %>%
      tbl_df() %>%
      mutate(region = as.character(code))
  }
  
  
  p <- ggplot() +
    geom_path(data = data_map,
              aes(x = long,
                  y = lat,
                  group = region)) +
    geom_map(
      data = data,
      aes_string(map_id = id,
                 fill = var),
      map = data_map,
      col = 'black'
    ) +
    scale_fill_viridis() +
    ggmap::theme_nothing(legend = TRUE)
  
  return(p)
}
