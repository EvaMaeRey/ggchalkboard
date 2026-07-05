# color mixed continuous viridis pal
viridis_pal_c <- function(alpha = 1, begin = 0, end = 1, direction = 1, 
                          option = "viridis", colmix = "white", amount = 0){
  
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

viridis_c_chalkboard <- function(){
  
  viridis_pal_c(alpha = .4, begin = 0, end = .95, direction = 1, option = "viridis", colmix = "lightyellow", amount = .6)
  
}


# color mixed discrete viridis pal
viridis_pal_d <- function(alpha = 1, begin = 0, end = 1, direction = 1, 
                          option = "viridis", colmix = "white", amount = 0){
    
  scales::pal_viridis(alpha, begin, end, direction, option) |> 
      scales::col_mix(colmix, amount)
  
}

viridis_d_chalkboard <- function(){
  
  viridis_pal_d(alpha = .4, begin = 0, end = .95, direction = 1, option = "viridis", colmix = "lightyellow", amount = .6)
  
}





#' @export
theme_chalkboard <- function(paper = "darkseagreen4",
                             ink = alpha("lightyellow", .6),
                             accent = alpha("orange", 1),
                             base_size = 20,
                             base_theme = theme_classic,
                             palette.colour.continuous = viridis_c_chalkboard(),
                             palette.fill.continuous = viridis_c_chalkboard(),
                             palette.colour.discrete = viridis_d_chalkboard(),
                             palette.fill.discrete = viridis_d_chalkboard(),
                      ...){
  
  base_theme(paper = paper, 
             ink = ink, 
             accent = accent,
             base_size = base_size, ...) %+replace%
    theme(plot.title.position = "plot", 
          palette.colour.continuous = palette.colour.continuous, 
          palette.fill.continuous = palette.fill.continuous,
          palette.colour.discrete = palette.colour.discrete,
          palette.fill.discrete = palette.fill.discrete
          )
  
}

