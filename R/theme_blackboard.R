#' @export
theme_blackboard <- function(paper = "grey20",
                             ink = alpha("whitesmoke", .6),
                             accent = alpha("palevioletred3", .8),
                             base_size = 18,
                             base_theme = theme_chalkboard,
                      ...){
  
  base_theme(paper = paper, ink = ink, base_size = base_size, ...) +
    theme(geom = element_geom(accent = accent))
  
}
