# library(devtools)
# devtools::install_github('rstudio/blogdown')

library(blogdown)
# blogdown::install_hugo()
# install_theme("digitalcraftsman/hugo-material-docs",
#              theme_example = TRUE, update_config = TRUE)
##
# blogdown::install_hugo()

# new_site('.', theme = 'digitalcraftsman/hugo-material-docs')

#setwd('/Users/susanaromero/Documents/1.VR_BLOGPOSTS/BlogRPosts/statsissues')
#getwd()

# Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc")
blogdown::serve_site()

blogdown::build_site()

blogdown::new_post("Likelihood", ext = '.Rmd')
blogdown::new_post("linear-regression", ext = '.Rmd')
blogdown::new_post("Introduction to R", ext = '.Rmd')
blogdown::new_post("Introduction to Python", ext = '.Rmd')
blogdown::new_post("How to setup a web with blogdown", ext = '.Rmd')

# we will create another repository to put other topics separately for programming

# error calling index: value is nil; should be of type string

