//
//  ContentView.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 11.09.2022.
//

import SwiftUI

struct ListeView: View {
    var body: some View {
        NavigationView{
            List(sehirlerDizisi){
                Sehirler in NavigationLink(destination: DetayView(secilenSehir: Sehirler), label: {Text(Sehirler.isim)})
            }.navigationTitle("Şehirler")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ListeView()
    }
}
