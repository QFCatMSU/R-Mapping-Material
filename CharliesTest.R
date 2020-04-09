{
  rm(list=ls());                         # clear Console Window
  options(show.error.locations = TRUE);  # show line numbers on error
  
  library(package=leaflet);
  library(package=rstudioapi);
  
  m = leaflet();
  m = addTiles(m);
  m = setView(m, -71.0382679, 42.3489054, zoom = 18);
  m = setMaxBounds(m, -71.0382679, 42.3489054, 
                   -71.1382679, 42.4489054);
 # m = fitBounds(m, -72, 40, -70, 43)
 # m = addMarkers(m, lng=174.768, lat=-36.852, popup="The birthplace of R") 
  
  myMap <- leaflet(options = leafletOptions(minZoom = 11)) %>%
    addProviderTiles("OpenStreetMap") %>%
    setView( lng = -87.567215,
             lat = 41.822582,
             zoom = 11 ) %>%
    setMaxBounds( lng1 = -87.94011,
                  lat1 = 41.64454,
                  lng2 = -87.52414,
                  lat2 = 42.02304 )
  
    print(myMap);
   
}