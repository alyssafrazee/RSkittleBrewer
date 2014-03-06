plotSkittles = function(){
    par(mfrow=c(2,2), mar=c(1,1,2,1))

    flavors = list(
        c('red3', 'purple4', 'darkorange1', 'green3', 'yellow1'),
        c('darkorange', 'dodgerblue', 'hotpink', 'limegreen', 'yellow'),
        c("chartreuse3", "lightcoral", "dodgerblue3", "firebrick", "darkslateblue"),
        c("salmon4", "red2", "dodgerblue3", "darkorange1", "green2", "yellow1")
    )

    names(flavors) = c("original", "tropical", "wildberry", "M&M")

    for(i in seq_along(flavors)){
        flavor = flavors[[i]]
        plot(c(-10, 10), c(-10, 10), xaxt='n', yaxt='n', type='n', xlab='', ylab='', main=names(flavors)[i])
        letter = ifelse(flavor[1] == 'salmon4', 'M', 'S')
        xvals = seq(-8, 8, length=length(flavor)) 
        yvals = runif(length(flavor), min=-7, max=7)
        points(xvals, yvals, cex=7, pch=21, col='gray70', bg=flavor)
        points(xvals, yvals, pch=letter, col='white')
    }

}