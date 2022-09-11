//
//  Sehirler.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 11.09.2022.
//

import Foundation
import SwiftUI
import CoreLocation

struct Sehirler : Identifiable{
    var id = UUID()
    var isim : String
    var gorselIsmi : String
    var ulke : String
    var bolge : String
    var koordinat : Koordinat // koordinat bilgisini aşağıdaki structan aldık.
    var koordinatLokasyonu : CLLocationCoordinate2D{
        CLLocationCoordinate2D(latitude: koordinat.latitude, longitude: koordinat.longitude)
    }
}

struct Koordinat {
    
    var latitude : Double // enlem
    var longitude : Double // boylam
}

let ankara = Sehirler(isim: "Ankara", gorselIsmi: "ankara", ulke: "Türkiye", bolge: "İçanadoly", koordinat: Koordinat(latitude: 20.0, longitude: 20.0))

