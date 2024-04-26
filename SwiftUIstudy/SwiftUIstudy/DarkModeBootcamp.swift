//
//  DarkModeBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 26.04.2024.
//

import SwiftUI

struct DarkModeBootcamp: View {
    
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 20) {
                    
                    Text("This color is PRIMARY")
                        .foregroundStyle(.primary)
                    Text("This color is SECONDARY")
                        .foregroundStyle(.secondary)
                    Text("This color is BLACK")
                        .foregroundStyle(Color.black)
                    Text("This color is WHITE")
                        .foregroundStyle(Color.white)
                    Text("This color is RED")
                        .foregroundStyle(Color.red)
                    Text("This color is globally adapive!")
                        .foregroundStyle(Color("AdaptiveColor"))
                    Text("This coolor is locally adaptive!")
                        .foregroundStyle(colorScheme == .light ? .green : .yellow)
                }
                
            }
            .navigationTitle("Dark mode Bootcamp")
        }
    }
}

#Preview {
        DarkModeBootcamp()
        .preferredColorScheme(.dark)
}
