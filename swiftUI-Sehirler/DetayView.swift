//
//  DetayView.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI

struct DetayView: View {
    var secilenSehir : Sehirler
    var body: some View {
        VStack{
            MapView(coordinate: secilenSehir.koordinatLokasyonu).frame( height: UIScreen.main.bounds.height * 0.3).edgesIgnoringSafeArea(.top)//edgesignoringsafearea diyerek güvenli alanı yukarıdan kaldırdık.
            
            OzelGorselView(image: Image(secilenSehir.gorselIsmi)).frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height*0.3,alignment: .center).offset( y: UIScreen.main.bounds.height * -0.15).padding(.bottom,-50) //offset komutu resmi yukarı almak için kullandık x değerini kullanmadığımız için sildik.
            VStack{
                HStack{
                    Text(secilenSehir.isim).font(.largeTitle).foregroundColor(.blue)
                    Spacer()
                    Text(secilenSehir.ulke).font(.title).foregroundColor(.orange)
                }
                HStack{
                    Text(secilenSehir.bolge)
                }
            }.padding().offset(y: UIScreen.main.bounds.height * -0.1)
            Spacer()
        }
    
    
    }
}

struct DetayView_Previews: PreviewProvider {
    static var previews: some View {
        DetayView(secilenSehir: izmir)
    }
}
