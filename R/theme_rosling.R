theme_rosling <- function(paper = alpha("black", .9), ink = "cadetblue2", 
                          accent = "orange", 
                          base_size = 20,
                          base_theme = theme_classic,
                          palette.colour.continuous = 
                            viridis_pal_c(option = "viridis", begin = .4),
                          palette.fill.continuous = 
                            viridis_pal_c(option = "viridis", begin = .4),
                          palette.colour.discrete = 
                            viridis_pal_d(colmix = "cadetblue1", amount = .2, 
                                          alpha = 1),
                          palette.fill.discrete = 
                            viridis_pal_d(colmix = "cadetblue1", amount = .5, 
                                          alpha = 1),
                          
                        ...){
  
  theme_chalkboard(paper = paper, ink = ink, accent = accent, base_theme = base_theme,
          base_size = base_size,
          palette.colour.continuous = palette.colour.continuous, 
          palette.fill.continuous = palette.fill.continuous,
          palette.colour.discrete = palette.colour.discrete,
          palette.fill.discrete = palette.fill.discrete
          )
  
}

