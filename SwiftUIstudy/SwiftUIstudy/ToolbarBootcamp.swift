//
//  ToolbarBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 02.05.2024.
//

import SwiftUI

struct ToolbarBootcamp: View {
    
    @State private var text: String = ""
    @State private var paths: [String] = []
    
    var body: some View {
        NavigationStack(path: $paths){
            ZStack{
                Color.white.ignoresSafeArea()
                
                ScrollView{
                    TextField("Placeholder", text: $text)
                    
                    ForEach(0..<50) { _ in
                        Rectangle()
                            .fill(Color.blue)
                            .frame(width: 200, height: 200)
                    }
                }
            }
            .navigationTitle("Toolbar")
//            .navigationBarItems(
//                leading: Image(systemName: "heart.fill"),
//                trailing: Image(systemName: "gear")
//            )
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Image(systemName: "heart.fill")
                }
                
                ToolbarItem(placement: .topBarTrailing) {
//                    HStack{
//                        Image(systemName: "house.fill")
                        Image(systemName: "gear")
//                    }
                }
            }
//            .toolbar(.hidden, for: .navigationBar)
//            .toolbarBackground(.hidden, for: .navigationBar)
//            .toolbarColorScheme(.dark, for: ToolbarPlacement.navigationBar)
            .toolbarTitleMenu {
                Button("Screen 1") {
                    paths.append("Screen 1")
                }
                Button("Screen 2") {
                    paths.append("Screen 2")
                }
            }
            .navigationDestination(for: String.self) { value in
                Text("New screen: \(value)")
            }
        }
    }
}


#Preview {
    ToolbarBootcamp()
}
