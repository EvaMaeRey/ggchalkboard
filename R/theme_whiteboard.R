#' @export
theme_whiteboard <- function(paper = "white",
                             ink = "grey20",
                             accent = alpha("darkred", .7),
                             base_size = 18,
                             base_theme = ggplot2::theme_classic,
             palette.colour.continuous = "viridis",
             palette.fill.continuous = "viridis",
             palette.colour.discrete = "viridis",
             palette.fill.discrete = "viridis",
                      ...){
  
  theme_chalkboard(paper = paper, 
             ink = ink, 
             base_size = base_size, 
             accent = accent, 
             palette.colour.continuous = palette.colour.continuous,
             palette.fill.continuous = palette.fill.continuous,
             palette.colour.discrete = palette.colour.discrete,
             palette.fill.discrete = palette.fill.discrete, ...)
  
}
