#' @export
theme_whiteboard <- function(base_size = 18,
    base_theme = ggplot2::theme_classic,
    paper = "grey98",
    ink = "grey20",
    accent = alpha("darkred", .7),
    palette.colour.continuous = "plasma",
    palette.fill.continuous = "plasma",
    palette.colour.discrete = "plasma",
    palette.fill.discrete = "plasma",
                      ...){
  
 base_theme(base_size = base_size, 
            paper = paper, 
             ink = ink, 
             accent = accent,
             ...) %+replace%
    theme(plot.title.position = "plot", 
          palette.colour.continuous = palette.colour.continuous, 
          palette.fill.continuous = palette.fill.continuous,
          palette.colour.discrete = palette.colour.discrete,
          palette.fill.discrete = palette.fill.discrete
          # palette.fill.ordinal = palette.colour.discrete,  # wish list
          # palette.fill.ordinal = palette.fill.discrete 
          )
  
}
