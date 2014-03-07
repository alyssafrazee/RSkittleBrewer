RSkittleBrewer = function(flavor){

    flavor = match.arg(flavor, c('original','tropical','wildberry','M&M','smarties'))

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
    
  if(flavor=="smarties"){
    
    #http://en.wikipedia.org/wiki/File:Smarties_old_new.jpg
    smartCols <- (c(rgb(255,150,200,max=255), #pink
             rgb(120,60,140,max=255),  #purple
             rgb(80,110,190,max=255),  #blue
             rgb(100,170,0,max=255),    #green
             rgb(255,220,20,max=255),  #yellow
             rgb(255,100,0,max=255),    #orange
             rgb(220,0,0,max=255),     #red
             rgb(100,20,20,max=255)))   #brown
    
    #naming allows selection by name 
    names(smartCols) <- c('pink','purple','blue','green','yellow','orange','red','brown')
    
    return(smartCols)
  }       
    
}
