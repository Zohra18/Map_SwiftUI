//
//  Annotation.swift
//  Map
//
//  Created by Zohra Achour on 18/03/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI
import MapKit

final class Checkpoint: NSObject, MKAnnotation {
    let title: String?
    let coordinate: CLLocationCoordinate2D
    
    init(title: String?, coordinate: CLLocationCoordinate2D) {
        self.title = title
        self.coordinate = coordinate
    }
}

var checkpoints: [Checkpoint] = [
  Checkpoint(title: "Da Nang", coordinate: .init(latitude: 16.047079, longitude: 108.206230)),
  Checkpoint(title: "Ha Noi", coordinate: .init(latitude: 21.027763, longitude: 105.834160))
]
