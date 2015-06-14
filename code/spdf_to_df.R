#' SpatialPolygonsDataFrame to data.frame function
#' 
#' This function convert SpatialPolygonsDataFrame to data.frame witout droping any variable
#'
#' @param spdf - SpatialPolygonsDataFrame
#'
#' @return data.frame
#'
#' @keywords sp, ggplot2
#'
#' @export
#' 
#' @examples
#' # data("wojewdztwa")
#' # spdf_to_df(wojewodztwa)



spdf_to_df <- function(spdf){
        library('ggplot2')
        library('plyr')
        df <- fortify(spdf)
        join(df, spdf@data, by="id")
}

