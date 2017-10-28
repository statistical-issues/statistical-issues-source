---
title: Geostatistics
author: ~
date: '2017-09-01'
categories: []
tags: []
menu:
  main:
    parent: Blog
    weight: 10
menuname: "main"
---

<!-- ```{r setup, include=FALSE} -->
<!-- knitr::opts_knit$set(base.dir = 'static/post/2017-09-01-geostat/') -->
<!-- knitr::opts_knit$set(base.url = '/post/2017-09-01-geostat/') -->
<!-- knitr::opts_chunk$set(echo = TRUE, fig.height = 5, dpi = 200) -->
<!-- ``` -->
<!-- knitr::opts_knit$set(base.dir = 'mamadas') -->
<!-- plop <- file.path(getwd(), 'static/blaaaa') -->
<!-- knitr::opts_knit$set(base.dir = file.path(getwd(), 'static/blaaaa')) -->
<!-- knitr::opts_knit$set(base.dir = '/home/chaconmo/Documents/Repositories/statistical-issues-source/static/blaaaa') -->
<!-- knitr::opts_knit$set(base.url = '/post/2017-09-01-geostat/') -->
<!-- knitr::opts_knit$set(base.dir = '/static/post/2017-09-01-geostat/') -->


## R Markdown

This is an R Markdown document. Markdown is a simple formatting syntax for authoring HTML, PDF, and MS Word documents. For more details on using R Markdown see <http://rmarkdown.rstudio.com>.

You can embed an R code chunk like this:


```r
summary(cars)
```

```
##      speed           dist       
##  Min.   : 4.0   Min.   :  2.00  
##  1st Qu.:12.0   1st Qu.: 26.00  
##  Median :15.0   Median : 36.00  
##  Mean   :15.4   Mean   : 42.98  
##  3rd Qu.:19.0   3rd Qu.: 56.00  
##  Max.   :25.0   Max.   :120.00
```

```r
fit <- lm(dist ~ speed, data = cars)
fit
```

```
## 
## Call:
## lm(formula = dist ~ speed, data = cars)
## 
## Coefficients:
## (Intercept)        speed  
##     -17.579        3.932
```

## Including Plots

You can also embed plots. See Figure \@ref(fig:pie-test) for example:


```r
par(mar = c(0, 1, 0, 1))
pie(
  c(280, 60, 20),
  c('Sky', 'Sunny side of pyramid', 'Shady side of pyramid'),
  col = c('#0292D8', '#F7EA39', '#C4B632'),
  init.angle = -50, border = NA
)
```

![A fancy pie chart.](/post/2017-09-01-geostatistics-in-r/figure/pie-test-1.png)



```r
par(mar = c(0, 1, 0, 1))
pie(
  c(280, 60, 20),
  c('Sky', 'Sunny side of pyramid', 'Shady side of pyramid'),
  col = c('#0292D8', '#F7EA39', '#C4B632'),
  init.angle = -50, border = NA
)
```

![A fancy pie chart.](/post/2017-09-01-geostatistics-in-r/figure/pie-no-test-bla-1.png)
