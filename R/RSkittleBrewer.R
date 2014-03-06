RSkittleBrewer = function(flavor){

    flavor = match.arg(flavor, c('original','tropical','wildberry','M&M'))

    if(flavor=="original"){
        return(c('red3', 'purple4', 'darkorange1', 'green3', 'yellow1'))
    }

    if(flavor=="tropical"){
        return(c('darkorange', 'dodgerblue', 'hotpink', 'limegreen', 'yellow'))   
    }

    if(flavor=="wildberry"){
        return(c("chartreuse3", "lightcoral", "dodgerblue3", "firebrick", "darkslateblue"))
    }

    if(flavor=="M&M"){
        return(c("salmon4", "red2", "dodgerblue3", "darkorange1", "green2", "yellow1"))
    }
}
