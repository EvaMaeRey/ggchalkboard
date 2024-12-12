theme_whiteboard <- function(paper = "white",
                             ink = alpha("darkslateblue", .9),
                             accent = alpha("darkred", .9),
                             base_size = 20,
                             inherited = ggplot2::theme_classic,
                      ...){
  
  inherited(paper = paper, ink = ink, base_size = base_size, ...) + 
    theme(geom = element_geom(accent = accent))
  
}
