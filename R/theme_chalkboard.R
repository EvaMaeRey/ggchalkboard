theme_classic <- ggplot2::theme_classic

theme_chalkboard <- function(paper = "darkseagreen4",
                             ink = alpha("lightyellow", .6),
                             accent = alpha("orange", 1),
                             base_size = 20,
                             base_theme = theme_classic,
                      ...){
  
  base_theme(paper = paper, ink = ink, base_size = base_size, ...) + 
    theme(geom = element_geom(accent = accent))
  
}
