#  RSkittleBrewer
#' Candy-based color palettes
#'
#' Vectors of colors corresponding to different candies.
#'
#' @param flavor Character string for candy-based color palette.
#' 
#' @export
#' @return Vector of character strings representing the chosen set of colors.
#'
#' @examples
#' plotSkittles()
#' plotSmarties()
#'
#' @seealso \code{\link{plotSkittles}}, \code{\link{plotSmarties}}
#' @keywords hplot
RSkittleBrewer <-
function(flavor=c('original','tropical','wildberry','M&M','smarties'))
{
    flavor = match.arg(flavor)

    switch(flavor,
           original=  c('red3', 'purple4', 'darkorange1', 'green3', 'yellow1'),
           tropical=  c('darkorange', 'dodgerblue', 'hotpink', 'limegreen', 'yellow'),
           wildberry= c("chartreuse3", "lightcoral", "dodgerblue3", "firebrick", "darkslateblue"),
           "M&M"=     c("salmon4", "red2", "dodgerblue3", "darkorange1", "green2", "yellow1"),
           smarties=  #http://en.wikipedia.org/wiki/File:Smarties_old_new.jpg
                      c(pink=  rgb(255,150,200, maxColorValue=255),
                        purple=rgb(120, 60,140, maxColorValue=255),
                        blue=  rgb( 80,110,190, maxColorValue=255),
                        green= rgb(100,170,  0, maxColorValue=255),
                        yellow=rgb(255,220, 20, maxColorValue=255),
                        orange=rgb(255,100,  0, maxColorValue=255),
                        red=   rgb(220,  0,  0, maxColorValue=255),
                        brown= rgb(100, 20, 20, maxColorValue=255))
           )
  }
