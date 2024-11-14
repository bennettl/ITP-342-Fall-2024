//
//  LocationViewModel.swift
//  LocationDemo
//
//  Created by Bennett Lee on 11/4/24.
//

import Foundation
import CoreLocation
import Combine

class LocationViewModel : NSObject, CLLocationManagerDelegate, ObservableObject {
    let locationManager = CLLocationManager()

    override init() {
        super.init()

        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.distanceFilter = 0.0
    }

    func getLocation() {
        locationManager.requestWhenInUseAuthorization()
    }

    func locationManagerDidChangeAuthorization(_ manager: CLLocationManager) {
        let status = manager.authorizationStatus
        print("\(#function) \(status)")

        if status == .authorizedAlways || status == .authorizedWhenInUse {
            manager.startUpdatingLocation()
        }
    }

    func locationManager(_ manager: CLLocationManager, didFailWithError error: any Error) {
        print("\(#function) \(error)")
    }

    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        guard let location = locations.first else {
            return
        }
        print("\(#function) \(location)")

        print("Lat: \(location.coordinate.latitude) Lng: \(location.coordinate.longitude)")

    }
}
