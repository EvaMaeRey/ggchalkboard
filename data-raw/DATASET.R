## save default lists in a fresh session
default_aes_point   <- ggplot2::GeomPoint$default_aes
default_aes_segment <- ggplot2::GeomSegment$default_aes
default_aes_rug     <- ggplot2::GeomRug$default_aes
default_aes_rect    <- ggplot2::GeomRect$default_aes
default_aes_bar     <- ggplot2::GeomBar$default_aes
default_aes_label     <- ggplot2::GeomLabel$default_aes


usethis::use_data(default_aes_point, overwrite = TRUE)
usethis::use_data(default_aes_segment, overwrite = TRUE)
usethis::use_data(default_aes_rug, overwrite = TRUE)
usethis::use_data(default_aes_rect, overwrite = TRUE)
usethis::use_data(default_aes_bar, overwrite = TRUE)
usethis::use_data(default_aes_label, overwrite = TRUE)
#
#
#
#
#
# library(ggplot2)
# params <- ls(pattern = '^Geom', env = as.environment('package:ggplot2'))
# geoms <- gsub("Geom", "", params) |> tolower()
# geoms <- c("abline"           ,"area"           , "bar"          ,   "blank"        ,   "boxplot"      ,
#            "col"           ,  "contour"          , "crossbar"     ,   "curve"        ,    "density" ,
#             "density2d"    ,    "dotplot"       ,  "errorbar"    ,    "errorbarh"   ,    "function"    ,    "hex"    ,
#             "hline"        ,   "label"          , "line"          ,  "linerange"   ,    "logticks"    ,    "map"         ,    "path"   ,
#             "point"        ,   "pointrange"     , "polygon"       ,  "quantile"    ,    "raster"      ,      "rect"   ,
#             "ribbon"       ,   "rug"            , "segment"       ,  "sf"          ,    "smooth"      ,    "spoke"       ,    "step"   ,
#             "text"         ,   "tile"           , "violin"        ,  "vline"     )
# lapply(geoms, update_geom_defaults, list(colour = "oldlace"))
# lapply(geoms, update_geom_defaults, list(colour = "oldlace"))
#
#
# ggplot2::update_geom_defaults
