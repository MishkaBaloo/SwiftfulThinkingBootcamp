//
//  ColorPickerBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 25.04.2024.
//

import SwiftUI

struct ColorPickerBootcamp: View {
    
    @State var backgroundColor: Color = .green
    
    var body: some View {
        ZStack{
            backgroundColor.ignoresSafeArea(edges: .all)
            
            ColorPicker("Select a color",
                        selection: $backgroundColor,
                        supportsOpacity: true)
            .padding()
            .background(Color.black)
            .clipShape(.rect(cornerRadius: 10))
            .foregroundStyle(Color.white)
            .font(.headline)
            .padding(50)
        }
    }
}

#Preview {
    ColorPickerBootcamp()
}
