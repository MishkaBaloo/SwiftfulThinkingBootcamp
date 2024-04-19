//
//  NavigationViewBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 19.04.2024.
//

import SwiftUI

struct NavigationViewBootcamp: View {
    var body: some View {
        NavigationView{
            ScrollView{
                
                NavigationLink("Hello, world!", destination: MyOtherScreen())
                
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .navigationTitle("All Inboxes")
            //.navigationBarTitleDisplayMode(.automatic)
            //.navigationBarHidden(true)
            .navigationBarItems(
                leading:
                    HStack{
                        Image(systemName: "person.fill")
                        Image(systemName: "flame.fill")
                    },
                trailing:
                    NavigationLink(
                        destination: MyOtherScreen(),
                        label: {
                            Image(systemName: "gear")
                        })
                    .accentColor(.red)
            )
        }
    }
    
    struct MyOtherScreen: View {
        
        @Environment(\.dismiss) var dissmisScreen
        
        var body: some View {
            ZStack{
                Color.green.edgesIgnoringSafeArea(.all)
                    .navigationTitle("Green Screen!")
                //.navigationBarHidden(true)
                
                VStack{
                    Button("BACK BUTTON"){
                        dissmisScreen()
                    }
                    NavigationLink("Click here", destination: Text("3rd screen!"))
                }
            }
        }
    }
}

#Preview {
    NavigationViewBootcamp()
}
