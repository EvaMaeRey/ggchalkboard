theme_blackboard <- function(paper = "grey27",
                             ink = alpha("whitesmoke", .6),
                             accent = alpha("palevioletred3", .8),
                             base_size = 20,
                             inherited = ggplot2::theme_classic,
                      ...){
  
  inherited(paper = paper, ink = ink, base_size = base_size, ...) + 
    theme(geom = element_geom(accent = accent))
  
}
