import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
  private let locationViewModel = LocationViewModel()
  private let mapZoomEdgeInsets = UIEdgeInsets(top: 70.0, left: 70.0, bottom: 70.0, right: 70.0)
  
  init() {
    locationViewModel.load()
  }
  
  func makeCoordinator() -> MapViewCoordinator {
    MapViewCoordinator(self)
  }
  
  func makeUIView(context: Context) -> MKMapView {
    let mapView = MKMapView()
    mapView.showsUserLocation = true
    mapView.delegate = context.coordinator
      mapView.backgroundColor = .black
    return mapView
  }
  
  func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
    updateOverlays(from: uiView)
  }
  
  private func updateOverlays(from mapView: MKMapView) {
    mapView.removeOverlays(mapView.overlays)
    let polyline = MKPolyline(coordinates: locationViewModel.locations, count: locationViewModel.locations.count)
    mapView.addOverlay(polyline)
    setMapZoomArea(map: mapView, polyline: polyline, edgeInsets: mapZoomEdgeInsets, animated: true)
  }
  
  private func setMapZoomArea(map: MKMapView, polyline: MKPolyline, edgeInsets: UIEdgeInsets, animated: Bool = false) {
      map.setVisibleMapRect(polyline.boundingMapRect, edgePadding: edgeInsets, animated: animated)
  }
}

struct MapView_Previews: PreviewProvider {
  static var previews: some View {
    MapView()
  }
}



