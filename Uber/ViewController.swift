//
//  ViewController.swift
//  Uber
//
//  Created by 日向野卓也 on 2018/09/04.
//  Copyright © 2018年 takuya.higano. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, CLLocationManagerDelegate, MKMapViewDelegate {
  
  @IBOutlet weak var mabView: MKMapView!
  
  override func viewDidLoad() {
    super.viewDidLoad()

    mabView.delegate = self
    
    let span = MKCoordinateSpanMake(0.05, 0.05)
    let location = CLLocationCoordinate2D(latitude: 35.6895000, longitude: 139.6917100)
    
    let region = MKCoordinateRegionMake(location, span)
    mabView.setRegion(region, animated: true)
  }
}

