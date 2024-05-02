//
//  BadgesBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 02.05.2024.
//

import SwiftUI

// List and TabView/TabBar

struct BadgesBootcamp: View {
    var body: some View {
        
//        List{
//            Text("Helo, world!")
//                .badge(10)
//            Text("Helo, world!")
//                .badge("NEW ITEMS!")
//            Text("Helo, world!")
//            Text("Helo, world!")
//        }
        
        TabView {
            Color.red
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge(99)
                .ignoresSafeArea(edges: .top)
            
            Color.green
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("5 like")
                .ignoresSafeArea(edges: .top)
            
            Color.blue
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Hello")
                }
                .badge("NEW!")
                .ignoresSafeArea(edges: .top)
        }
    }
}

#Preview {
    BadgesBootcamp()
}
