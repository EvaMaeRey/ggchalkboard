# scale_fill_viridis_c - see internals



viridis_pal_d <- function(alpha = 1, begin = 0, end = 1, direction = 1, option = "viridis", colmix = "white", amount = 0){
    
  set.seed(12345)
  
  scales::pal_viridis(alpha, begin, end, direction, option) |> 
      scales::col_mix(colmix, amount)
  
}


viridis_pal_b <- function(alpha = 1, begin = 0, end = 1, direction = 1, option = "viridis", colmix = "white", amount = 0){
  
  pal_binned(pal_viridis(alpha, begin, end, direction, 
        option))  |> 
      scales::col_mix(colmix, amount)

}
  
viridis_pal_c <- function(alpha = 1, begin = 0, end = 1, direction = 1, option = "viridis", colmix = "white", amount = 0){
  
  scales::pal_gradient_n(
    scales::pal_viridis(alpha = alpha, 
                        begin = begin, 
                        end = end, 
                        direction = direction, 
                        option = option)(6) |>
      scales::col_mix(colmix, amount), 
    values = NULL, 
    space = "Lab")
  
}


chalkboard_viridis_c <- function(){
  
  viridis_pal_c(alpha = .4, begin = 0, end = .95, direction = 1, option = "viridis", colmix = "lightyellow", amount = .6)
  
}

chalkboard_viridis_d <- function(){
  
  viridis_pal_d(alpha = .4, begin = 0, end = .95, direction = 1, option = "viridis", colmix = "lightyellow", amount = .6)
  
}





#' @export
theme_chalkboard <- function(paper = "darkseagreen4",
                             ink = alpha("lightyellow", .6),
                             accent = alpha("orange", 1),
                             base_size = 20,
                             base_theme = theme_classic,
                             palette.colour.continuous = chalkboard_viridis_c(),
                             palette.fill.continuous = chalkboard_viridis_c(),
                             palette.colour.discrete = chalkboard_viridis_d(),
                             palette.fill.discrete = chalkboard_viridis_d(),
                             palette.colour.binned = chalkboard_viridis_b(),
                             palette.fill.binned = chalkboard_viridis_b(),
                             # palette.size.continuous = 
                      ...){
  
  base_theme(paper = paper, 
             ink = ink, 
             base_size = base_size, ...) +
    theme(geom = element_geom(accent = accent#, pointshape = 21
                              ), 
          text = element_text(face = "plain"),
          plot.title.position = "plot", 
          palette.colour.continuous = palette.colour.continuous, 
          palette.fill.continuous = palette.fill.continuous,
          palette.colour.discrete = palette.colour.discrete,
          palette.fill.discrete = palette.fill.discrete,
          palette.fill.ordinal = palette.colour.discrete,
          palette.fill.ordinal = palette.colour.discrete)
  
}

