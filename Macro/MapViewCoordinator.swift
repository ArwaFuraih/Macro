import MapKit

final class MapViewCoordinator: NSObject, MKMapViewDelegate {
  private let map: MapView
  
  init(_ control: MapView) {
    self.map = control
  }
  
  func mapView(_ mapView: MKMapView, didAdd views: [MKAnnotationView]) {
    if let annotationView = views.first, let annotation = annotationView.annotation {
      if annotation is MKUserLocation {
        let region = MKCoordinateRegion(center: annotation.coordinate, latitudinalMeters: 1000, longitudinalMeters: 1000)
        mapView.setRegion(region, animated: true)
          mapView.backgroundColor = .black
      }
    }
  }

  func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
    let renderer = MKPolylineRenderer(overlay: overlay)
      renderer.strokeColor = .cyan
    renderer.lineWidth = 30
    
    return renderer
  }
}
