//
//  MapView.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI
import MapKit


struct MapView: UIViewRepresentable {
    
    var coordinate : CLLocationCoordinate2D
   
    func updateUIView(_ uiView: MKMapView, context: Context) {
        
        let span = MKCoordinateSpan(latitudeDelta: 0.9, longitudeDelta: 0.9)
       let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
    }
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView(coordinate: sehirlerDizisi[0].koordinatLokasyonu)
    }
}
