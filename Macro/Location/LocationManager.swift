////
////  LocationManager.swift
////  MapNoFlyZone
////
////  Created by Arwa Alfuraih on 18/06/2022.
////
//
//import CoreLocation
//
//
//class LocationManager: NSObject, ObservableObject{
//    
//    private let manager = CLLocationManager()
//    @Published var userLocation: CLLocation?
//    static let shared = LocationManager()
//    
//    override init(){
//        super.init()
//        manager.delegate = self
//        manager.desiredAccuracy = kCLLocationAccuracyBest
//        manager.startUpdatingLocation()
//    }
//    func requestLocation(){
//        manager.requestWhenInUseAuthorization()
//    }
//    
//}
//
//extension LocationManager: CLLocationManagerDelegate {
//    func locationManager (_ manager : CLLocationManager, didChangeAuthorization status: CLAuthorizationStatus){
//        switch status {
//        case .notDetermined:
//            print("Debug: not determined")
//        case .restricted:
//            print("Debug: restricted")
//
//        case .denied:
//            print("Debug: denied ")
//
//        case .authorizedAlways:
//            print("Debug: auth always")
//
//        case .authorizedWhenInUse:
//            print("Debug: when in use")
//
//        case .authorized:
//            print("Debug: success")
//
//        }
//    }
//    
//    
//    //set location
//    func locationManager(_ manager: CLLocationManager, didUpdateLocation location: [CLLocation]) {
//        
//        guard let location = location.last else {return}
//        self.userLocation = location
//    }
//    
//}
