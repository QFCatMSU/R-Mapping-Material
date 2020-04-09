{
  # execute the lines of code from reference.r
  source(file="scripts/reference.R");  
  
  # read in CSV files
  data <- read.csv(file="data/TempLogger_Coordinates.csv")
}

# this code makes a map.... but mapview includes 
# toggles, multiple layers, and clickable attribute tables, 
# all of which leaflet can't do without additional code.

v1 = leaflet() %>% 
     addTiles() %>%
     addMarkers(lng=data$Longitude, lat=data$Latitude)
print(v1)
## This map made with just leafly gives you a fine interactive map, but leaves much to be desired

# the mapview package can do more with less lines of code
print(mapview(data, xcol="Longitude", ycol="Latitude", crs=4269, grid=FALSE));

templog_location <- st_as_sf(data, coords=c("Longitude", "Latitude"), crs=4269)

print(mapview(templog_location));

# mapshot is how you make a static map! Not very intuitive coding for the function, however.
# Tutorial: https://r-spatial.github.io/mapview/reference/mapshot.html

# templog_map <- mapview(templog_location, map.types = "Esri.NatGeoWorldMap")
# mapshot(templog_map, file = paste0(getwd(), "/map.png"),
#         remove_controls = c("zoomControl", "homeButton", "layersControl"))

# Play with different base layer map types
print(mapview(templog_location, map.types = "Stamen.Toner"))
print(mapview(templog_location, map.types = "Stamen.Terrain"))
print(mapview(templog_location, map.types = "Esri.NatGeoWorldMap"))

# or combine them all in a vector wrapper so we can toggle between them all on the same map
print(mapview(templog_location, map.types = c("Stamen.Toner", "Stamen.Terrain", "Esri.NatGeoWorldMap")))

## find different map types here:
### http://leaflet-extras.github.io/leaflet-providers/preview/

# map by variable with a third variable to color the points with zcol =
print(mapview(data, xcol="Longitude", 
        ycol="Latitude", 
        zcol = "Project", 
        crs=4269, grid=FALSE, 
        map.types = c("Stamen.Toner", "Stamen.Terrain", "Esri.NatGeoWorldMap")))


# Tutorial had a section on choropleths but it used census data that you needed an ID number for... 
# You just have to apply for one and you'll get it, but I'm not so sure we want to use 
# census data examples for our workshop... 