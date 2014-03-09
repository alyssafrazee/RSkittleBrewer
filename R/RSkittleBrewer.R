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
                      c(pink=  rgb(255,150,200,max=255), #pink
                        purple=rgb(120,60,140,max=255),  #purple
                        blue=  rgb(80,110,190,max=255),  #blue
                        green= rgb(100,170,0,max=255),    #green
                        yellow=rgb(255,220,20,max=255),  #yellow
                        orange=rgb(255,100,0,max=255),    #orange
                        red=   rgb(220,0,0,max=255),     #red
                        brown= rgb(100,20,20,max=255))   #brown
           )
  }
