#' Plot the Skittles color palettes
#'
#' Plot illustrating the Skittles and M&M's color palettes
#'
#' @export
#' @importFrom graphics par plot points
#' @importFrom stats runif
#' @return None.
#' 
#' @examples
#' plotSkittles()
#' @seealso \code{\link{RSkittleBrewer}}, \code{\link{plotSmarties}}
plotSkittles <-
function()
{
    par(mfrow=c(2,2), mar=c(1,1,2,1))

    palettes <- c("original", "tropical", "wildberry", "M&M")

    for(palette in palettes) {
        flavors <- RSkittleBrewer(palette)

        plot(c(-10, 10), c(-10, 10), xaxt='n', yaxt='n', type='n', xlab='', ylab='', main=palette)
        letter = ifelse(palette=='M&M', 'M', 'S')
        xvals = seq(-8, 8, length=length(flavors)) 
        yvals = runif(length(flavors), min=-7, max=7)
        points(xvals, yvals, cex=7, pch=21, col='gray70', bg=flavors)
        points(xvals, yvals, pch=letter, col='white')
    }

}
