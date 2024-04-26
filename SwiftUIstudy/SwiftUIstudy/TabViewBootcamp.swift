//
//  TabViewBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 26.04.2024.
//

import SwiftUI

struct TabViewBootcamp: View {
    
    @State var selectdTab: Int = 2
    
    let icons: [String] = [
        "heart.fill", "globe", "house.fill", "person.fill"
    ]
    
    var body: some View {
        TabView {
            ForEach(icons, id: \.self) { icon in
                Image(systemName: icon)
                    .resizable()
                    .scaledToFit()
                    .padding(50)
            }
        }
        .background(
            RadialGradient(
                gradient: Gradient(colors: [Color.red, Color.blue]),
                center: .center,
                startRadius: 5,
                endRadius: 400))
        .frame(height: 400)
        .tabViewStyle(PageTabViewStyle())
        
        
//        TabView(selection: $selectdTab) {
//            
//            HomeView(selectedTab: $selectdTab)
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
//            
//            Text("Borwse tab".uppercased())
//                .tabItem {
//                    Image(systemName: "globe")
//                    Text("Browse")
//                }
//                .tag(1)
//            
//            Text("Profile tab".uppercased())
//                .tabItem {
//                    Image(systemName: "person.fill")
//                    Text("Profile")
//                }
//                .tag(2)
//        }
//        .tint(Color.red)
    }
}

#Preview {
    TabViewBootcamp()
}

struct HomeView: View {
    
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea(.all, edges: .top)
            VStack{
                Text("Home tab".uppercased())
                    .font(.largeTitle)
                    .foregroundStyle(Color.white)
                
                Button(action: {
                    selectedTab = 2
                    
                }, label: {
                    Text("Go to ptofile")
                        .font(.headline)
                        .padding()
                        .padding(.horizontal)
                        .background(Color.white)
                        .foregroundStyle(Color.black)
                        .clipShape(.rect(cornerRadius: 10))
                })
            }
        }
    }
}
