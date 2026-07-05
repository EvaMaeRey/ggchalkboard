#' @export
theme_glassboard <- function(paper = alpha("white", 0), # transparent
                             ink = alpha("black", .7),
                             accent = alpha("darkred", .7),
                             base_size = 18,
                             base_theme = ggplot2::theme_classic,
                      ...){
  
  base_theme(paper = paper, ink = ink, accent = accent, 
             base_size = base_size, ...)
  
}
