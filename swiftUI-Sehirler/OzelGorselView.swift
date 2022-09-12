//
//  OzelGorselView.swift
//  swiftUI-Sehirler
//
//  Created by Mert AKBAŞ on 12.09.2022.
//

import SwiftUI

struct OzelGorselView: View {
    var image : Image
    var body: some View {
        image.resizable().aspectRatio(contentMode: .fit).clipShape(Circle()).overlay(Circle().stroke(Color.white,lineWidth: 5)).shadow(radius: 15)
    }
}

struct OzelGorselView_Previews: PreviewProvider {
    static var previews: some View {
        OzelGorselView(image: Image("istanbul"))
    }
}
