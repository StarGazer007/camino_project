library(leaflet)
library(markdown)
## The Way

set.seed(2016-10-06)

placeURL <- c(
  "<a href='https://en.wikipedia.org/wiki/Saint-Jean-Pied-de-Port'>St. Jean de Pied Port</a>",
  "<a href='https://en.wikipedia.org/wiki/Roncesvalles'>Roncesvalles, Spain</a>",
  "<a href='http://'>Zubiri, Spain</a>",
  "<a href='http://'>Pamplona, Spain</a>",
  "<a href='http://'>Puente La Reina, Spain</a>",
  "<a href='http://'>Estella, Spain</a>",
  "<a href='http://'>Los Arcos, Spain</a>",
  "<a href='http://'>Viana, Spain</a>",
  "<a href='http://'>Logroño, Spain</a>",
  "<a href='http://'>Azofra, Spain</a>",
  "<a href='http://'>Grañón, Spain</a>",
  "<a href='https://en.wikipedia.org/wiki/Tosantos'>Tosantos, Spain</a>",
  "<a href='http://'>San Juan de Ortegaa, Spain</a>",
  "<a href='http://'>Burgos, Spain</a>",
  "<a href='http://'>Hornillos del Camino, Spain</a>",
  "<a href='http://'>Castrojeriz, Spain</a>",
  "<a href='http://'>Frómista, Spain</a>",
  "<a href='http://'>Carrión de los Condes, Spain</a>",
  "<a href='http://'>Ledigos, Spain</a>",
  "<a href='http://'>Bercianos del Real Camino, Spain</a>",
  "<a href='http://'>Reliegos, Spain</a>",
  "<a href='http://'>Leon, Spain</a>",
  "<a href='http://'>Hospital de Orbigo, Spain</a>",
  "<a href='http://'>Astorga, Spain</a>",
  "<a href='http://'>Molinaseca, Spain</a>",
  "<a href='http://'>Villafranca del Bierzo, Spain</a>",
  "<a href='http://'>Las Herrerias de Valcarce, Spain</a>",
  "<a href='http://'>Triacastela, Spain</a>",
  "<a href='http://'>Ferreiros, Spain</a>",
  "<a href='http://'>Ligonde, Spain</a>",
  "<a href='http://'>Ribadiso de Baixo, Spain</a>",
  "<a href='http://'>Santiago de Compostela, Spain</a>"

)

caminoLatLong <-data.frame (
  lat = c(43.1631,43.0092,42.9304,42.812,42.6723,42.6721,42.4653,42.4234,42.4621,42.4139,42.3833
,42.344,42.3386,42.2885,42.2676,42.3373,42.3545,42.3874,42.4745,42.5987,42.4627
,42.4549,42.5377,42.6084,42.684,42.7634,42.7834,42.8645,42.9034,42.8782),

lng = c(-1.2381,-1.3195,-1.5046,-1.6458,-1.8136, -2.0325,-2.4802,-2.8003, -3.0276,-3.243,-3.4499,-3.6969,-3.9265, -4.1424,-4.4053,-4.6024, -4.8647, -5.1439,
  -5.3554,-5.5671,-5.8815,-6.0533,-6.519, -6.8086,-7.007, -7.2114,-7.53,-7.785,-8.0759,-8.5448)
)

caminoLatLong %>%
  leaflet() %>%
  addTiles() %>%
  addMarkers(popup = placeURL)

m <- leaflet() %>%
  addTiles() %>%  # Add default OpenStreetMap map tiles
  addMarkers(lng=-1.2381, lat=43.1631 , popup="Start of The Way")%>%
  addMarkers(lng=-1.3195, lat=43.0092 , popup="Roncesvalles, Spain")%>%
  addMarkers(lng=-1.5046, lat=42.9304 , popup="Zubiri, Spain") %>%
  addMarkers(lng=-1.6458, lat=42.8125 , popup="Pamplona, Spain") %>%
  addMarkers(lng=-1.8136, lat=42.6723 , popup="Puente La Reina, Spain") %>%
  addMarkers(lng=-2.0325, lat=42.6721 , popup="Estella, Spain") %>%
  addMarkers(lng=-2.1942, lat=42.5398 , popup="Los Arcos, Spain") %>%
  addMarkers(lng=-2.0325, lat=42.6721 , popup="Viana, Spain") %>%
  addMarkers(lng=-2.4802, lat=42.4653 , popup="Logroño, Spain") %>%
  addMarkers(lng=-2.8003, lat=42.4234 , popup="Azofra, Spain") %>%
  addMarkers(lng=-3.0276, lat=42.4621 , popup="Grañón, Spain") %>%
  addMarkers(lng=-3.2430, lat=42.4139 , popup="Tosantos, Spain") %>%
  addMarkers(lng=-3.4499, lat=42.3833 , popup="San Juan de Ortegaa, Spain") %>%
  addMarkers(lng=-3.6969, lat=42.3440 , popup="Burgos, Spain") %>%
  addMarkers(lng=-3.9265, lat=42.3386 , popup="Hornillos del Camino, Spain") %>%
  addMarkers(lng=-4.1424, lat=42.2885 , popup="Castrojeriz, Spain") %>%
  addMarkers(lng=-4.4053, lat=42.2676 , popup="Frómista, Spain") %>%
  addMarkers(lng=-4.6024, lat=42.3373 , popup="Carrión de los Condes, Spain") %>%
  addMarkers(lng=-4.8647, lat=42.3545 , popup="Ledigos, Spain") %>%
  addMarkers(lng=-5.1439, lat=42.3874 , popup="Bercianos del Real Camino, Spain") %>%
  addMarkers(lng=-5.3554, lat=42.4745 , popup="Reliegos, Spain") %>%
  addMarkers(lng=-5.5671, lat=42.5987 , popup="Leon, Spain") %>%
  addMarkers(lng=-5.8815, lat=42.4627 , popup="Hospital de Orbigo, Spain") %>%
  addMarkers(lng=-6.0533, lat=42.4549 , popup="Astorga, Spain") %>%
  addMarkers(lng=-6.5190, lat=42.5377 , popup="Molinaseca, Spain") %>%
  addMarkers(lng=-6.8086, lat=42.6084 , popup="Villafranca del Bierzo, Spain") %>%
  addMarkers(lng=-7.007,  lat=42.684 , popup="Las Herrerias de Valcarce, Spain") %>%
  addMarkers(lng=-7.2114, lat=42.7634 , popup="Triacastela, Spain") %>%
  addMarkers(lng=-7.5300, lat=42.7834 , popup="Ferreiros, Spain") %>%
  addMarkers(lng=-7.7856, lat=42.8645 , popup="Ligonde, Spain") %>%
  addMarkers(lng=-8.0759, lat=42.9034 , popup="Ribadiso de Baixo, Spain") %>%
  addMarkers(lng=-8.5448, lat=42.8782 , popup="Santiago de Compostela, Spain") 
m  # Print the map

