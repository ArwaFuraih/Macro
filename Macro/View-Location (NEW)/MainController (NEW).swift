//
//  MapMainController.swift
//  NewAirMap
//
//  Created by Arwa Alfuraih on 11/07/2022.
//MainPreview.previews

import UIKit
import MapKit
import LBTATools
import SwiftUI

extension MainController{
    func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            
            if (annotation is MKPointAnnotation){
            
        let annotationView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "id")
        annotationView.canShowCallout = true
                //    annotationView.image = UIImage (named: "dot1")

        return annotationView
    }
            return nil
    }
}


class MainController : UIViewController , CLLocationManagerDelegate, MKMapViewDelegate {
    let mapView = MKMapView()
        let locationManager = CLLocationManager()
        
        
      
        
        fileprivate func requestUserLocation(){
                locationManager.requestWhenInUseAuthorization()
                locationManager.delegate = self
        }
        func locationManager(_ manager: CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus) {
               
                switch status {
                case .notDetermined:
                        print ("not")
                case .restricted:
                        print ("res")
                case .denied:
                        print ("den")
                case .authorizedAlways:
                        print ("autho always")
                case .authorizedWhenInUse:
                        locationManager.startUpdatingLocation()
                        print ("in use")
                case .authorized:
                        print ("autho")
                default:
                        print ("failed")
                }
        }
        func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
                guard let firstLocation = locations.first else {return}
                mapView.setRegion(.init(center: firstLocation.coordinate, span: .init(latitudeDelta: 0.1, longitudeDelta: 0.1)), animated: true)
              //  locationManager.stopUpdatingLocation()//to save power 
        }
    override func viewDidLoad() {
        super.viewDidLoad()
            print ("loaded")

        requestUserLocation()
        mapView.delegate = self
        mapView.showsUserLocation = true

        view.addSubview(mapView)
        mapView.translatesAutoresizingMaskIntoConstraints = false //enable auto layout
        mapView.fillSuperview()
        setupRegionForMap()
        setUpAnnotationForMap()
        searchUI()
        AirPort()
        MinistryOfDefence()
        MinistryOfInterior()
        performLocalSearch()
        locationsCarousel()
        locaionsController.mainController = self
      //  startEndAnnotations()
        requestForDirections()
    }

        let locaionsController = locationsCarouselController(scrollDirection: .horizontal)

        
        fileprivate func startEndAnnotations(){
                let annotation1 = MKPointAnnotation()
                annotation1.coordinate = CLLocationCoordinate2D(latitude: 24.97712376744189, longitude: 46.660253539927446)
                mapView.addAnnotation(annotation1)
                
                let annotation2 = MKPointAnnotation()
                annotation2.coordinate = CLLocationCoordinate2D(latitude: 24.91848265427112, longitude: 46.69597694479086)
                mapView.addAnnotation(annotation2)
                
                let annotation3 = MKPointAnnotation()
                annotation3.coordinate = CLLocationCoordinate2D(latitude: 24.946437967013054, longitude: 46.74897665243875)
                mapView.addAnnotation(annotation3)
                
                let annotation4 = MKPointAnnotation()
                annotation4.coordinate = CLLocationCoordinate2D(latitude: 24.991941666935027, longitude: 46.69920298236556)
                mapView.addAnnotation(annotation4)
        }
        
        
        
        fileprivate func requestForDirections(){
                let request = MKDirections.Request()
                
                let startPoint1 = MKPlacemark(coordinate: .init(latitude: 24.97712376744189, longitude: 46.660253539927446))
                request.source = .init(placemark: startPoint1)
                
                let startPoint2 = MKPlacemark(coordinate: .init(latitude: 24.91848265427112, longitude: 46.69597694479086))
                request.source = .init(placemark: startPoint2)
                
                let endPoint1 = MKPlacemark(coordinate: .init(latitude: 24.958039, longitude: 46.700293))
                request.destination = .init(placemark: endPoint1)
                
              //  request.requestsAlternateRoutes = true
               // request.transportType = .automobile
                
                let directions = MKDirections(request: request)
                directions.calculate{ (resp , err)  in
                        if let err = err {
                                print("failed to find route", err)
                                return
                        }
                        //success
                        print ("found route")
//                        resp?.routes.forEach({(route)  in
//                                self.mapView.addOverlay( route.polyline )
//                        })
                        
                       guard let route = resp?.routes.first else{ return}
                        self.mapView.addOverlay( route.polyline )
                        
                }//calc
        }//request for direction
        
        
        func AirPort(){
               var coordinates: [CLLocationCoordinate2D] = []
               coordinates.append(CLLocationCoordinate2D(latitude: 24.97712376744189, longitude: 46.660253539927446))
            //   coordinates.append(CLLocationCoordinate2D(latitude: 24.97092332090729, longitude: 46.71673032036202))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.91848265427112, longitude: 46.69597694479086))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.946437967013054, longitude: 46.74897665243875))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.991941666935027, longitude: 46.69920298236556))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.97712376744189, longitude: 46.660253539927446))
               let polyline = MKPolyline(coordinates: coordinates, count: coordinates.count)

              // polyline.title = “Red”
               mapView.addOverlay(polyline)
           }
        
        func MinistryOfDefence(){
               var coordinates: [CLLocationCoordinate2D] = []
               coordinates.append(CLLocationCoordinate2D(latitude: 24.670149001849097, longitude: 46.718235679166135))
              coordinates.append(CLLocationCoordinate2D(latitude: 24.667697248221348, longitude: 46.717972304336165))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.667869456299588, longitude: 46.71649162391571))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.67021647163774, longitude: 46.71663466003473))
                coordinates.append(CLLocationCoordinate2D(latitude: 24.670149001849097, longitude: 46.718235679166135))
               let polyline = MKPolyline(coordinates: coordinates, count: coordinates.count)

              // polyline.title = “Red”
               mapView.addOverlay(polyline)
           }
        
        func MinistryOfInterior(){
               var coordinates: [CLLocationCoordinate2D] = []
               coordinates.append(CLLocationCoordinate2D(latitude: 24.671146295402128, longitude: 46.695834876614))
              coordinates.append(CLLocationCoordinate2D(latitude: 24.67039653407025, longitude: 46.69669177685931))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.66958075690419, longitude: 46.69582761007218))
               coordinates.append(CLLocationCoordinate2D(latitude: 24.670347333471145, longitude: 46.694967956342836))
                coordinates.append(CLLocationCoordinate2D(latitude: 24.671146295402128, longitude: 46.695834876614))
               let polyline = MKPolyline(coordinates: coordinates, count: coordinates.count)

              // polyline.title = “Red”
               mapView.addOverlay(polyline)
           }

        
        func mapView(_ mapView: MKMapView, rendererFor overlay: MKOverlay) -> MKOverlayRenderer {
                if overlay.isKind(of: MKPolyline.self) {
                          // draw the track
                          let polyLine = overlay
                let polylineRenderer = MKPolylineRenderer(overlay: polyLine)
                        polylineRenderer.strokeColor = .red
                        polylineRenderer.alpha = 0.4
                polylineRenderer.lineWidth = 7
                print(polylineRenderer)
                return polylineRenderer
        }
                return MKOverlayRenderer()
        }
        
        
        fileprivate func locationsCarousel(){
                let locationsView = locaionsController.view!
                locationsView.layer.cornerRadius = 16
                locationsView.layer.opacity = 0.9
                view.addSubview(locationsView)
                locationsView.anchor(top: nil, leading: view.leadingAnchor, bottom: view.safeAreaLayoutGuide.bottomAnchor, trailing: view.trailingAnchor, padding: .init(top: 0, left: 0, bottom: 30, right: 0), size: .init(width: 0, height: 130))
        }

        let searchTextField = UITextField (placeholder: "Search Places" )
        var listener: Any!
        
    fileprivate func searchUI(){
     //   var cancellable: AnyCancellable?
        searchTextField.textColor = .systemMint
        searchTextField.tintColor = .systemMint
    //    let searchIcon = UIImage (systemName: "magnifyingglass.circle")

        let blackContainer = UIView(backgroundColor: .black)
        blackContainer.layer.cornerRadius = 25
        view.addSubview(blackContainer)
        blackContainer.anchor(top: view.safeAreaLayoutGuide.topAnchor, leading: view.leadingAnchor, bottom: nil, trailing: view.trailingAnchor , padding: .init(top: 0, left: 16, bottom: 0, right: 16))
            blackContainer.stack(searchTextField).withMargins(.allSides(16))
            //listen for text changes and then perform new search
          //  searchTextField.addTarget(self, action: #selector(handleSearchChanges), for: .editingChanged)
            listener = NotificationCenter.default
                    .publisher(for: UITextField.textDidChangeNotification , object: searchTextField)
                   .debounce(for: .milliseconds(500), scheduler: RunLoop.main)
                    .sink{[weak self] (_) in
                            self?.performLocalSearch()
                    }
    }
    @objc fileprivate func handleSearchChanges(){
                performLocalSearch()
        }

    fileprivate func performLocalSearch(){
        let request = MKLocalSearch.Request()
            request.naturalLanguageQuery = "Airport"
            request.naturalLanguageQuery = searchTextField.text

        request.region = mapView.region

        let localSearch = MKLocalSearch(request: request)
        localSearch.start {(resp , err ) in
            if let err = err {
                print (err)
                return
            }
            //success
           //remove old annotations

            //    self.mapView.removeAnnotation(self.mapView.annotations as! MKAnnotation)
                self.locaionsController.items.removeAll()

            resp?.mapItems.forEach({(mapItem) in
                print (mapItem.address())
                let annotation = MKPointAnnotation()
                annotation.coordinate = mapItem.placemark.coordinate
                annotation.title = mapItem.name
                self.mapView.addAnnotation(annotation)

                    self.locaionsController.items.append(mapItem)

            })
                self.locaionsController.collectionView.scrollToItem(at: [0,0], at: .centeredHorizontally, animated: true)


            // self.mapView.showAnnotations(self.mapView.annotations, animated: true)
            //to direct into the local search
        }
    }

    fileprivate func setUpAnnotationForMap(){
        let annotation1 = MKPointAnnotation()
        let annotation2 = MKPointAnnotation()
        let annotation3 = MKPointAnnotation()
        let annotation4 = MKPointAnnotation()
        let annotation5 = MKPointAnnotation()

        annotation1.coordinate = CLLocationCoordinate2D(latitude: 24.958039, longitude: 46.700293)
        annotation2.coordinate = CLLocationCoordinate2D(latitude: 24.738448592902092, longitude:  46.74420623226884)
        annotation3.coordinate = CLLocationCoordinate2D(latitude: 24.665929632282214, longitude:  46.63083461600418)
        annotation4.coordinate = CLLocationCoordinate2D(latitude: 24.670711023517484, longitude:  46.69574884483981)
        annotation5.coordinate = CLLocationCoordinate2D(latitude: 24.669102077407302, longitude:  46.71716356018222)

        annotation1.title = "King Khalid Airport"
        annotation1.subtitle = "No-Fly Zone"

        annotation2.title = "Royal Air Defense Forces"
        annotation2.subtitle = "No-Fly Zone"

        annotation3.title = "The Ritz-Carlton"
        annotation3.subtitle = "No-Fly Zone"

        annotation4.title = "Ministry of Interior"
        annotation4.subtitle = "No-Fly Zone"

        annotation5.title = "Ministry of Defense"
        annotation5.subtitle = "No-Fly Zone"


        mapView.addAnnotation(annotation1)
        mapView.addAnnotation(annotation2)
        mapView.addAnnotation(annotation3)
        mapView.addAnnotation(annotation4)
        mapView.addAnnotation(annotation5)

      //  mapView.showAnnotations(self.mapView.annotations, animated: true)
    }

    fileprivate func setupRegionForMap(){
        let center = CLLocationCoordinate2D(latitude: 24.7255566, longitude: 46.672287)
        let span = MKCoordinateSpan(latitudeDelta: 0.4, longitudeDelta: 0.4)
        let region = MKCoordinateRegion(center: center, span: span)
        mapView.setRegion(region, animated: true)
    }

}




extension MKMapItem{
    func address() -> String {
        var addressString = ""
        if placemark.subThoroughfare != nil {
            addressString = placemark.subThoroughfare! + " "
        }
        if placemark.thoroughfare != nil {
            addressString += placemark.thoroughfare! + ", "
        }
        if placemark.postalCode != nil {
            addressString += placemark.postalCode! + " "
        }
        if placemark.locality != nil {
            addressString += placemark.locality! + ", "
        }
        if placemark.administrativeArea != nil {
            addressString += placemark.administrativeArea! + " "
        }
        if placemark.country != nil {
            addressString += placemark.country!
        }
        return addressString
    }
}




struct MainPreview: PreviewProvider{
  
        static var previews: some View{
            ContainerView().ignoresSafeArea(.all).preferredColorScheme(.dark).previewInterfaceOrientation(.portrait)
    }


    struct ContainerView: UIViewControllerRepresentable{

        func makeUIViewController(context: UIViewControllerRepresentableContext <MainPreview.ContainerView>) -> MainController {
            return MainController()
        }
        func updateUIViewController(_ uiViewController: MainController, context: UIViewControllerRepresentableContext<MainPreview.ContainerView>) {

        }
       // typealias UIViewControllerType = MainController


    }

}
