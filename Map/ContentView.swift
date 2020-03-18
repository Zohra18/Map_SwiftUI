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
      Checkpoint(title: "Da Nang", coordinate: .init(latitude: 16.047079, longitude: 108.206230)),
      Checkpoint(title: "Ha Noi", coordinate: .init(latitude: 21.027763, longitude: 105.834160))
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
