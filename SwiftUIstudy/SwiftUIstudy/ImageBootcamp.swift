//
//  ImageBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 30.03.2024.
//

import SwiftUI

struct ImageBootcamp: View {
    var body: some View {
        Image("nasa")
            .resizable()
            //.aspectRatio(contentMode: .fit)
            .scaledToFill()
            //.scaledToFit()
            .frame(width: 430, height: 950)
            //.frame(width: 300, height: 200)
            //.cornerRadius(40)
            //.clipped()
//            .clipShape(
//                Circle()
//                //RoundedRectangle(cornerRadius: 25.0)
//                //Ellipse()
//                )
    }
}

#Preview {
    ImageBootcamp()
}
