//
//  ListeRowView.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI

struct ListeRowView: View {
    var sehirler : Sehirler

    var body: some View {
        HStack{
            Image(sehirler.gorselIsmi).resizable().aspectRatio(contentMode: .fit).frame(width: 100, height: 100, alignment: .leading)
            Spacer()
            VStack{
                Text(sehirler.isim).font(.title)
                Text(sehirler.bolge)
            }
        }.padding()
    }
}

struct ListeRowView_Previews: PreviewProvider {
    static var previews: some View {
        ListeRowView(sehirler: izmir)
    }
}
