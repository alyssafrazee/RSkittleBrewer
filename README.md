Plot the ![Rainbow!](http://mneme.homenet.org/rainbow.png)
=================

If you want high-quality, scientifically-researched color schemes for your R plots, check out the [RColorBrewer package](http://cran.r-project.org/web/packages/RColorBrewer/index.html). If you want your plots to be colored the same way as packs of Skittles (or M&Ms), then this package (RSkittleBrewer) is the way to go. 

### install
with `devtools`:

```S
devtools::install_github('RSkittleBrewer', 'alyssafrazee')
```

### use
There are only three functions in this package. 

Call `RSkittleBrewer` on a flavor to get a vector of R color names that correspond to that Skittle flavor. 

```S
original_colors = RSkittleBrewer('original')
tropical_colors = RSkittleBrewer('tropical')
wildberry_colors = RSkittleBrewer('wildberry')
smarties_colors = RSkittleBrewer('smarties')
mm_colors = RSkittleBrewer('M&M')
```
In this project, M&M is a Skittle flavor. It's cool. The British also wanted Smarties (thanks [Andy](https://github.com/AndySouth))!

`plotSkittles()` and `plotSmarties()` make super awesome illustrations of the color schemes. 

### I must know more!
Here's a [blog post](http://alyssafrazee.com/RSkittleBrewer.html) I wrote for you. 

### who else should I thank?  
* [Karl](https://github.com/kbroman), for helping make this into a legitimate package
* [Jeff and Rafa](http://simplystatistics.org/), for inspiration
