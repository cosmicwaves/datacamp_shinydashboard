# NASA fireball data set

# htmlwidget.org -- This an R package
library("leaflet")
leaflet() |> addTiles() |> 
  addMarkers(
    lng = nasa_fireballs$lon,
    lat = nasa_fireballs$lat
  )
