import MapKit
import Polyline
class LocationViewModel: ObservableObject {
  var locations = [CLLocationCoordinate2D]()
  
  func load() {
    fetchLocations()
  }
  
  private func fetchLocations() {
    let polyline1 = Polyline(encodedPolyline: "_dbwCsk_|GmdDmiIcwG|}Dn{Bv|ItzHgmE")
      //used google maps encoding https://developers.google.com/maps/documentation/utilities/polylineutility
      
   //   let polyline2 = Polyline(encodedPolyline: "{{dwCgyz{GhWbyAlx@c|@_hAa]")
    guard let decodedLocations = polyline1.locations else { return }
    locations = decodedLocations.map { CLLocationCoordinate2D(latitude: $0.coordinate.latitude, longitude: $0.coordinate.longitude)}

      
  }
}
