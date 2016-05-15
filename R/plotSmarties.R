#' Plot the Smarties color palettes
#'
#' Plot illustrating the Smarties color palette
#'
#' @export
#' @importFrom graphics plot points
#' @importFrom stats runif
#' @return None.
#' 
#' @examples
#' plotSmarties()
#' @seealso \code{\link{RSkittleBrewer}}, \code{\link{plotSkittles}}
plotSmarties <-
function()
{
  nameFlavor <- 'smarties'
  flavor <- RSkittleBrewer(nameFlavor)
  
  plot(c(-10, 10), c(-10, 10), xaxt='n', yaxt='n', type='n', xlab='', ylab='', main=nameFlavor)
  xvals = seq(-8, 8, length=length(flavor)) 
  yvals = runif(length(flavor), min=-7, max=7)
  points(xvals, yvals, cex=7, pch=21, col='gray70', bg=flavor)
}
