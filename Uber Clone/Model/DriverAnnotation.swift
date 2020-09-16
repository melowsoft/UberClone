//
//  DriverAnnotation.swift
//  Uber Clone
//
//  Created by Tony Stack on 28/08/2020.
//  Copyright © 2020 Tony Stack. All rights reserved.
//

import MapKit

class DriverAnnontation: NSObject, MKAnnotation {
   dynamic var coordinate: CLLocationCoordinate2D
    var uid: String
    
    init(uid: String, coordinate: CLLocationCoordinate2D) {
        self.uid = uid
        self.coordinate = coordinate
    }
    
    func updateAnnotationPosition(withCoordinate coordinate: CLLocationCoordinate2D) {
        UIView.animate(withDuration: 0.2) {
            self.coordinate = coordinate
        }
    }
}
