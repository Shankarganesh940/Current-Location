//
//  ViewController.swift
//  Mapping
//
//  Created by Greeens5 on 25/05/19.
//  Copyright © 2019 Book. All rights reserved.
//
import UIKit
import CoreLocation
class ViewController: UIViewController,CLLocationManagerDelegate {
    var locationmanager = CLLocationManager()
    override func viewDidLoad() {
        super.viewDidLoad()
        locationmanager.delegate = self
        locationmanager.desiredAccuracy = kCLLocationAccuracyBest
        locationmanager.distanceFilter = kCLDistanceFilterNone
        locationmanager.requestWhenInUseAuthorization()
        locationmanager.startMonitoringSignificantLocationChanges()
        locationmanager.startUpdatingLocation()
    }
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error", error)
    }
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        print("Location", locations)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

