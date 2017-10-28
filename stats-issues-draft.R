# library(devtools)
# devtools::install_github('rstudio/blogdown')

library(blogdown)
# blogdown::install_hugo()
# install_theme("digitalcraftsman/hugo-material-docs",
#              theme_example = TRUE, update_config = TRUE)
##
# blogdown::install_hugo()

new_site('.', theme = 'digitalcraftsman/hugo-material-docs')
new_site('material', theme = 'digitalcraftsman/hugo-material-docs')

#setwd('/Users/susanaromero/Documents/1.VR_BLOGPOSTS/BlogRPosts/statsissues')
#getwd()

Sys.setenv(RSTUDIO_PANDOC="/usr/lib/rstudio/bin/pandoc")
blogdown::serve_site()

blogdown::build_site(method = "custom")
knitr::knit()

blogdown::new_post("Likelihood", ext = '.Rmd')
blogdown::new_post("linear-regression", ext = '.Rmd')
blogdown::new_post("Introduction to R", ext = '.Rmd')
blogdown::new_post("Introduction to Python", ext = '.Rmd')
blogdown::new_post("How to setup a web with blogdown", ext = '.Rmd')

# we will create another repository to put other topics separately for programming

# error calling index: value is nil; should be of type string



post_jekyll <- function (filename,
  path_jekyll = "/home/chaconmo/Documents/Repositories/erickchacon/_posts",
  fig_jekyll = "{{site.baseurl}}/assets/images/") {

  content <- readLines(filename)
  new_content <- gsub("(!\\[.+\\]\\()(.+\\))",
                      paste0("\\1", fig_jekyll, "\\2"),
                      content)
  filename <- file.path(path_jekyll, filename)
  write(new_content, file = filename)
  # cat(paste(filename, "successfully exported to jekyll.\n"))
}


getwd()
# all_files <- list.files(pattern = "\\.Rmd$", recursive = TRUE)
# all_files

knit_page <- function (input, output, base.dir = NULL, base.url = NULL, ...) {

  knitr::opts_knit$set(base.dir = base.dir)
  knitr::opts_knit$set(base.url = base.url)
  knitr::knit(input, output, ... )

}
knit_blog <- function () {

  knit_data <- tibble::tibble(
    input = list.files("content", "\\.Rmd$", full.names = T, recursive = T)
    )

  knit_data <- dplyr::mutate(
    knit_data,
    output = sub("\\.Rmd$", ".md", input),
    base.url = sub("^content", "", sub("\\.Rmd$", "/", input), ""),
    base.dir = file.path("static", sub("^/", "", base.url))
    )

  purrr::pmap(knit_data, knit_page)

}

# knitr::opts_chunk$set(echo = TRUE, fig.height = 5, dpi = 300)
knit_blog()
blogdown::serve_site()

file.remove(knit_data$output)

