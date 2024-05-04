//
//  SafeAreaInsetBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 04.05.2024.
//

import SwiftUI

struct SafeAreaInsetBootcamp: View {
    var body: some View {
        NavigationStack{
            List(0..<10) { _ in
                Rectangle()
                    .frame(height: 300)
            }
            .navigationTitle("Safe Area Instets")
            .navigationBarTitleDisplayMode(.inline)
//                    .overlay(alignment: .bottom) {
//                        Text("Hi")
//                            .frame(maxWidth: .infinity)
//                            .background(Color.yellow)
//                }
                    .safeAreaInset(edge: .top, alignment: .trailing, spacing: nil) {
                        Text("Hi")
                            .frame(maxWidth: .infinity)
//                            .padding()
                            .background(Color.yellow.ignoresSafeArea(edges: .bottom))
//                            .clipShape(Circle())
//                            .padding()
                    }
            
                    .safeAreaInset(edge: .bottom, alignment: .trailing, spacing: nil) {
                        Text("Hi")
                            .frame(maxWidth: .infinity)
//                            .padding()
                            .background(Color.yellow.ignoresSafeArea(edges: .bottom))
//                            .clipShape(Circle())
//                            .padding()
                    }
        }
    }
}

#Preview {
    SafeAreaInsetBootcamp()
}
