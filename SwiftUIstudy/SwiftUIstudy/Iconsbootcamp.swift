//
//  Iconsbootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 30.03.2024.
//

import SwiftUI

struct Iconsbootcamp: View {
    var body: some View {
        //Image(systemName: "trash.circle.fill")
        Image(systemName: "person.fill.badge.plus")
            .renderingMode(.original)
            .font(.largeTitle)
            //.resizable()
            //.scaledToFill()
            //.scaledToFit()
            //.aspectRatio(contentMode: .fit)
            //.font(.largeTitle)
            //.font(.system(size: 400))
            //.foregroundColor(.blue)
            .frame(width: 300, height: 300)
            //.clipped()
            
    }
}

#Preview {
    Iconsbootcamp()
}
