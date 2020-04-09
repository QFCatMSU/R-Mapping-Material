{
  rm(list=ls());                         # clear Console Window
  options(show.error.locations = TRUE);  # show line numbers on error
  options(max.print=10000)                # allows full data to be printed
  
  library(package=plyr);                 # include all plyr functions
  library(package=dplyr);                # include all dplyr functions
  library(package=data.table);           # incluse all data.table functions
  library(package=ggplot2);              # include all GGPlot2 functions
  library(package=bindrcpp);
  library(package=gplots);
  library(package=graphics);
  library(package=lubridate);
  library(package=leaflet);
  library(package=mapview);
  library(package=sf)
}
