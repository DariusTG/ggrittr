## This is a function to create the functions for the package and keep updated as ggplot changes
## Do not run
BuildAllFunctions = function() {
  cat("" , file = "R/geoms.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  for(i in lsf.str("package:ggplot2")) {
    if(substr(i, 1, 5) == "geom_") {
      stem = gsub("geom_", "", i)
      cat(paste0("geom_", stem, "_p = g_", stem, " = function(p, ...) {return(p + ", i, "(...))}\n") , file = "R/geoms.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
    }
  }
  
  
  cat("" , file = "R/stats.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  for(i in lsf.str("package:ggplot2")) {
    if(substr(i, 1, 5) == "stat_") {
      stem = gsub("stat_", "", i)
      cat(paste0("stat_", stem, "_p = s_", stem, " = function(p, ...) {return(p + ", i, "(...))}\n") , file = "R/stats.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
    }
  }
  
  
  cat("" , file = "R/scales.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  for(i in lsf.str("package:ggplot2")) {
    print(i)
    if(substr(i, 1, 6) == "scale_") {
      stem = gsub("scale_", "", i)
      cat(paste0("scale_", stem, "_p = c_", stem, " = function(p, ...) {return(p + ", i, "(...))}\n") , file = "R/scales.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
    }
  }
  
  
  cat("" , file = "R/themes.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  for(i in lsf.str("package:ggplot2")) {
    if(substr(i, 1, 6) == "theme_") {
      stem = gsub("theme_", "", i)
      cat(paste0("theme_", stem, "_p = t_", stem, " = function(p, ...) {return(p + ", i, "(...))}\n") , file = "R/themes.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
    }
  }
  cat(paste0("theme_p = function(p, ...) {return(p + geom_blank(...))}\n") , file = "R/themes.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  
  
  cat("" , file = "R/facets.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  for(i in lsf.str("package:ggplot2")) {
    if(substr(i, 1, 6) == "facet_") {
      stem = gsub("facet_", "", i)
      cat(paste0("facet_", stem, "_p = f_", stem, " = function(p, ...) {return(p + ", i, "(...))}\n") , file = "R/facets.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
    }
  }
  
  
  cat("" , file = "R/coords.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  for(i in lsf.str("package:ggplot2")) {
    if(substr(i, 1, 6) == "coord_") {
      stem = gsub("coord_", "", i)
      cat(paste0("coord_", stem, "_p = f_", stem, " = function(p, ...) {return(p + ", i, "(...))}\n") , file = "R/coords.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
    }
  }
  
  
  cat("" , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = FALSE)
  cat(paste0("guides_p = function(p, ...) {return(p + guides(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  cat(paste0("labs_p = function(p, ...) {return(p + labs(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  cat(paste0("labs_p = function(p, ...) {return(p + labs(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  cat(paste0("ggtitle_p = function(p, ...) {return(p + ggtitle(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  cat(paste0("xlab_p = function(p, ...) {return(p + xlab(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  cat(paste0("ylab_p = function(p, ...) {return(p + ylab(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
  cat(paste0("annotate_p = function(p, ...) {return(p + annotate(...))}\n") , file = "R/additional.R", sep = "", fill = FALSE, labels = NULL, append = TRUE)
}
