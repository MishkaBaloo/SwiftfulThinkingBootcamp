//
//  ImageToSymbols.swift
//  SwiftUIstudy
//
//  Created by user on 30.03.2024.
//

import SwiftUI

struct ImageToSymbols: View {
    var body: some View {
        Image("nasa")
            .renderingMode(.template)
            .resizable()
            .frame(width: 350, height: 300)
            .cornerRadius(20)
            .scaledToFit()
            .foregroundColor(.brown)
            //.foregroundColor(.red) - can't change
        
    }
}

#Preview {
    ImageToSymbols()
}
