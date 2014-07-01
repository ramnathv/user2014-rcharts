map_world <- function(leaflet = list(), view = list(), geo = list()){
  def = list(
    leaflet = list(
      url = "http://{s}.tile.stamen.com/toner-lite/{z}/{x}/{y}.jpg",
      attribution = '&copy; <a href="http://openstreetmap.org">OpenStreetMap2</a>'
    ),
    view = list(
      center = c(35.505, -1.09),
      zoom = 2
    ),
    geo = list(
      url = system.file("libraries/crosslet/maps/world.topo.json", 
        package = 'rMaps'),
      name_field = 'NAME',
      id_field = 'NAME',
      topo_object = 'world'
    )
  )
  modifyList(def, list(leaflet = leaflet, view = view, geo = geo))
}

map_us_counties = function(leaflet = list(), view = list(), 
    geo = list()){
  def = list(
    leaflet =  list(
      url = 'https://stamen-tiles-{s}.a.ssl.fastly.net/toner/{z}/{x}/{y}.png',
     attribution = '&copy; <a href="http://openstreetmap.org">OpenStreetMap2</a>'
    ),
    view = list(
      center = c(40.42, -98.73),
      zoom =  5
    ),
    geo = list(
      url = system.file("libraries/crosslet/maps/uscounties.topo.json", 
        package = 'rMaps'),
      name_field = "NAME",
      id_field = "GEOID",
      topo_object = "us_counties"
    )
  )
  modifyList(def, list(leaflet = leaflet, view = view, geo = geo))
}

map_india_pc = function(leaflet = list(), view = list(), geo = list()){
  def = list(
    leaflet =  list(
      url = 'https://stamen-tiles-{s}.a.ssl.fastly.net/toner/{z}/{x}/{y}.png',
      attribution = '&copy; <a href="http://openstreetmap.org">OpenStreetMap</a>'
    ),
    view = list(
      center = c(21, 85),
      zoom = 5
    ),
    geo = list(
      url = "pcsnoproj.json",
      name_field = "name",
      id_field = "id",
      topo_object = "pcs"
    )
  )
  modifyList(def, list(leaflet = leaflet, view = view, geo = geo))
}