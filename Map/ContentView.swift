//
//  ContentView.swift
//  Map
//
//  Created by Zohra Achour on 04/03/2020.
//  Copyright © 2020 Zohra Achour. All rights reserved.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
//    @State private var centerCoordinate = CLLocationCoordinate2D()
//    @State private var locations = [MKPointAnnotation]()
    
    @State var checkpoints: [Checkpoint] = [
      Checkpoint(title: "Musée du Louvre", coordinate: .init(latitude: 48.8611473, longitude: 2.3380277)),
      Checkpoint(title: "Tour Eiffel", coordinate: .init(latitude: 48.8582602, longitude: 2.2944991)),
       Checkpoint(title: "Moulin Rouge", coordinate: .init(latitude: 48.8840787, longitude: 2.3324082)),
       Checkpoint(title: "Place de la Bastille", coordinate: .init(latitude: 48.852987, longitude: 2.3688579)),
         Checkpoint(title: "Arc de Triomphe", coordinate: .init(latitude: 48.8737791, longitude: 2.2950372))
    ]
    
    
    var body: some View {
        ZStack {
//            MapView(centerCoordinate: $centerCoordinate, annotations: locations)
            MapView(checkpoints: $checkpoints)
                .edgesIgnoringSafeArea(.all)
            
            
//            Circle()
//                .fill(Color.blue)
//                .opacity(0.3)
//                .frame(width: 32, height: 32)
//            VStack {
//                Spacer()
//                HStack {
//                    Spacer()
//                    Button(action: {
//                        let newLocation = MKPointAnnotation()
//                        newLocation.coordinate = self.centerCoordinate
//                        self.locations.append(newLocation)
//                    }, label: {
//                        Image(systemName: "plus")
//
//                    })
//                    .padding()
//                        .background(Color.black.opacity(0.7))
//                        .foregroundColor(.white)
//                        .font(.title)
//                    .clipShape(Circle())
//                        .padding(.trailing)
//                }
//            }
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
