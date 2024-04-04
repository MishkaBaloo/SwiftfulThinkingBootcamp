//
//  PaddingBotcamp.swift
//  SwiftUIstudy
//
//  Created by user on 01.04.2024.
//

import SwiftUI

struct PaddingBotcamp: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .font(.largeTitle)
            .fontWeight(.semibold)
            .padding(.bottom, 20)
            
            Text("This is description of what we wil do on this screen. It is multiple lines and we will align the text to the leading edge ")
            
        }
        .padding()
        .padding(.vertical, 10)
        .background(
            Color.white
                .cornerRadius(10)
                .shadow(
                    color: .black.opacity(0.3),
                    radius: 10,
                    x: 0.0, y: 10)
        )
        .padding(.horizontal, 10)
    }
}

#Preview {
    PaddingBotcamp()
}
