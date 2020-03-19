//
//  MapView.swift
//  Map
//
//  Created by Zohra Achour on 04/03/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    
    
//    @Binding var centerCoordinate: CLLocationCoordinate2D
    @Binding var checkpoints: [Checkpoint]
//    @Binding var 
    
    var locationManager = CLLocationManager()
//    var annotations: [MKPointAnnotation]
    
    func setupManager() {
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
    }
    
    func makeUIView(context: Context) -> MKMapView {
        setupManager()
        let center = CLLocationCoordinate2D(latitude: 48.862511, longitude: 2.338211)
        let region = MKCoordinateRegion(center: center, latitudinalMeters: 2000, longitudinalMeters: 2000)
        let mapView = MKMapView()
        mapView.region = region
        mapView.showsUserLocation = true
        mapView.userTrackingMode = .follow
//        mapView.delegate = context.coordinator
        return mapView
    }
    
    func updateUIView(_ uiView: MKMapView, context: Context) {
        uiView.addAnnotations(checkpoints)
//        if annotations.count != uiView.annotations.count {
//            uiView.removeAnnotation(view.annotations)
//            uiView.addAnnotation(annotations)
//        }
    }
    
//    func makeCoordinator() -> Coordinator {
//        Coordinator(self)
//    }
    
    
//    class Coordinator: NSObject, MKMapViewDelegate {
//        var parent: MapView
//
//        init( _ parent: MapView) {
//            self.parent = parent
//        }
//
//
//        func mapViewDidChangeVisibleRegion(_ mapView: MKMapView) {
//            parent.centerCoordinate = mapView.centerCoordinate
//        }
//
//    }
}


//extension MKPointAnnotation {
//    static var mkPointAnnot: MKPointAnnotation {
//        let annotation = MKPointAnnotation()
//        annotation.title = "Simplon"
//        annotation.subtitle = "55 Rue de Montreuil"
//        annotation.coordinate = CLLocationCoordinate2D(latitude: 51.1, longitude: 0)
//        return annotation
//    }
//}



struct MapView_Previews: PreviewProvider {
    static var previews: some View {
//        MapView(centerCoordinate: .constant(MKPointAnnotation.mkPointAnnot.coordinate), annotations: [MKPointAnnotation.mkPointAnnot])
        MapView(checkpoints: .constant(checkpoints))
    }
}
