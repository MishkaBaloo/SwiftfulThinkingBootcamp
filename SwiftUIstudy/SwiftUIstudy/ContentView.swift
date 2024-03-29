//
//  ContentView.swift
//  SwiftUIstudy
//
//  Created by user on 28.03.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
           Image(systemName: "globe")
            .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, everyone!")
                .fontWeight(.black)
                .foregroundColor(Color.purple)
            Image(systemName: "globe")
             .imageScale(.large)
                 .foregroundStyle(.tint)
            Text("New try")
                .font(.subheadline)
                .fontWeight(.black)
                .foregroundColor(Color.blue)
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(.subheadline)
                .fontWeight(.ultraLight)
                .foregroundColor(Color.orange)
                
                
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
