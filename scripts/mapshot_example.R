
#### Save a mapview or leaflet map as .html index file
#### or .png, .pdf, or .jpeg image. with mapshot function

### structure of the function... 
# mapshot(x, url = NULL, file = NULL, remove_url = TRUE,
#         remove_controls = c("zoomControl", "layersControl", "homeButton",
#                             "scaleBar"), ...)


m <- mapview(breweries)
print(m);

## create standalone .html (not fixed map / still interactive)
mapshot(m, url = paste0(getwd(), "/map1.html"))

## create standalone .png; temporary .html is removed automatically unless
## 'remove_url = FALSE' is specified

# webshot::install_phantomjs()  # need to run this code the first time
print(mapshot(m, file = paste0(getwd(), "/map2.png")))
print(mapshot(m, file = paste0(getwd(), "/map3.png"),
        remove_controls = c("zoomControl", "homeButton", "layersControl")))

## create .html and .png
print(mapshot(m, url = paste0(getwd(), "/map4.html"),
        file = paste0(getwd(), "/map5.png")))
# }

