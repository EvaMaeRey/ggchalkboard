#' @export
theme_whiteboard <- function(paper = "white",
                             ink = alpha("black", .9),
                             accent = alpha("darkred", .9),
                             base_size = 18,
                             base_theme = ggplot2::theme_classic,
                      ...){
  
  theme_chalkboard(paper = paper, 
             ink = ink, 
             base_size = base_size, accent = accent, ...)
  
}
