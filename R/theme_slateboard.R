#' @export
theme_slateboard <- function(paper = "lightskyblue4",
                             ink = alpha("whitesmoke", .6),
                             accent = alpha("palevioletred3", .8),
                             base_size = 18,
                             base_theme = theme_chalkboard,
                      ...){
  
  theme_chalkboard(paper = paper, ink = ink, base_size = base_size, accent = accent, ...)
  
}
