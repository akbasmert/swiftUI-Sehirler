//
//  MapView.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI
import MapKit


struct MapView: View {
    @State var region = MKCoordinateRegion(center: sehirlerDizisi[0].koordinatLokasyonu, span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))
    var body: some View {
        Map(coordinateRegion: $region)// Bu kullanım IOS 14 ve üstünü kapsadığı için başka bir yötem kullanacağız.
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
