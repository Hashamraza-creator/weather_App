
//
//  LocationManagers.swift
//  weather App
//
//  Created by Hasham Raza  on 11/08/2024.
//

import Foundation
import CoreLocation

class LocationManager : NSObject, ObservableObject, CLLocationManagerDelegate{
    
    let Manager = CLLocationManager()
    
    @Published var location: CLLocationCoordinate2D?
    @Published var isloading = false
    
    override init(){
        super.init()
        Manager.delegate = self
        
    }
    func requestLocation(){
        isloading = true
        Manager.requestLocation()
        }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        location = locations.first?.coordinate
        isloading = false
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error Getting Location", error)
        isloading = false
    }
}
 


