
<!-- README.md is generated from README.Rmd. Please edit that file -->

# ggchalkboard

<!-- badges: start -->

<!-- badges: end -->

The goal of ggchalkboard is to …

## Installation

You can install the released version of ggchalkboard from
[CRAN](https://CRAN.R-project.org) with:

``` r
install.packages("ggchalkboard")
```

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("EvaMaeRey/ggchalkboard")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(ggchalkboard)
## basic example code

library(ggplot2)
#> Warning: package 'ggplot2' was built under R version 3.6.2

geoms_chalk()
ggplot(cars) +
  aes(speed, dist) +
  geom_point() +
  theme_chalkboard()
```

<img src="man/figures/README-example-1.png" width="100%" />

``` r


library(ggplot2)
geoms_chalk()
ggplot(cars) +
 aes(speed, dist) +
 geom_point() +
 theme_chalkboard_slate()
```

<img src="man/figures/README-example-2.png" width="100%" /> \# How?

``` r
the_code <- readLines("R/theme_chalkboard.R")
```

``` r

#' Title
#'
#' @param color
#' @param fill
#'
#' @return
#' @export
#'
#' @examples
geoms_chalk <- function(color = "lightyellow", fill = color){

  # https://stackoverflow.com/questions/21174625/ggplot-how-to-set-default-color-for-all-geoms

  ggplot2::update_geom_defaults("point",   list(colour = color, size = 2.5, alpha = .75))
  ggplot2::update_geom_defaults("segment",   list(colour = color, size = 1.25, alpha = .75))
  ggplot2::update_geom_defaults("rug",   list(colour = color, size = 1, alpha = .75))
  ggplot2::update_geom_defaults("rect",   list(colour = color, size = 1, alpha = .75))
  ggplot2::update_geom_defaults("label",   list(fill = fill, color = "grey35", size = 5))

  # params <- ls(pattern = '^geom_', env = as.environment('package:ggxmean'))
  # geoms <- gsub("geom_", "", params)
  #
  # lapply(geoms, update_geom_defaults, list(colour = "oldlace"))
  # lapply(geoms, update_geom_defaults, list(colour = "oldlace"))

}

#' Title
#'
#' @param board_color
#' @param chalk_color
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' geoms_chalk()
#' ggplot(cars) +
#' aes(speed, dist) +
#' geom_point() +
#' theme_chalkboard()
theme_chalkboard <- function(board_color = "darkseagreen4", chalk_color = "lightyellow"){

  list(
    ggplot2::theme(rect = ggplot2::element_rect(fill =
                                                  board_color)),
    ggplot2::theme(text = ggplot2::element_text(color = chalk_color,
                                                face = "italic",
                                                size = 15)),
    ggplot2::theme(panel.background =
                     ggplot2::element_rect(fill = board_color)),
    ggplot2::theme(legend.key = ggplot2::element_blank()),
    ggplot2::theme(legend.title = ggplot2::element_blank()),
    ggplot2::theme(axis.text =
                     ggplot2::element_text(color = chalk_color)),
    ggplot2::theme(axis.ticks =
                     ggplot2::element_line(color = chalk_color)),
    ggplot2::theme(panel.grid = ggplot2::element_blank())
  )

}

#' Title
#'
#' @return
#' @export
#'
#' @examples
#' library(ggplot2)
#' geoms_chalk()
#' ggplot(cars) +
#' aes(speed, dist) +
#' geom_point() +
#' theme_chalkboard_slate()
theme_chalkboard_slate <- function(){

  theme_chalkboard("lightskyblue4", "honeydew")

}
```
