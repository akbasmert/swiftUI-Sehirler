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

let ankara = Sehirler(isim: "Ankara", gorselIsmi: "ankara", ulke: "Türkiye", bolge: "İçanadoly", koordinat: Koordinat(latitude: 39.57 , longitude: 32.53))
let adana = Sehirler(isim: "Adana", gorselIsmi: "adana", ulke: "Türkiye", bolge: "İçanadolu", koordinat: Koordinat(latitude: 35.38, longitude: 34.36))
let istanbul = Sehirler(isim: "İstanbul", gorselIsmi: "istanbul", ulke: "Türkiye", bolge: "Marmara", koordinat: Koordinat(latitude:  41.0122,longitude: 28.976))
let izmir = Sehirler(isim: "İzmir", gorselIsmi: "izmir", ulke: "Türkiye", bolge: "Ege", koordinat: Koordinat(latitude: 38.26, longitude: 27.09))
let ordu = Sehirler(isim: "Ordu", gorselIsmi: "ordu", ulke: "Türkiye", bolge: "Karadeniz", koordinat: Koordinat(latitude: 40.9862, longitude: 37.8797 ))
let yalova = Sehirler(isim: "Yalova", gorselIsmi: "yalova", ulke: "Türkiye", bolge: "Marmara", koordinat: Koordinat(latitude: 40.6549, longitude: 29.2842))
let sehirlerDizisi = [ankara,adana,istanbul,izmir,ordu,yalova]




