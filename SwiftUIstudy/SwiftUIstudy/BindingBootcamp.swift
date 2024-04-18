//
//  BindingBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 18.04.2024.
//

import SwiftUI

struct BindingBootcamp: View {
    
    @State var backgroundColor: Color = Color.green
    @State var title: String = "Title"
    
    var body: some View {
        ZStack{
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Text(title.uppercased())
                    .foregroundColor(.white)
                    .font(.headline)
                ButtonnView(backgroundColor: $backgroundColor, title: $title)
            }
        }
    }
}

struct ButtonnView: View {
    
    @Binding var backgroundColor: Color
    @State var buttonColor: Color = Color.blue
    @Binding var title: String
    
    var body: some View {
        Button(action: {
            backgroundColor = Color.orange
            buttonColor = Color.pink
            title = "New title!".uppercased()
        }, label: {
            Text("Button")
                .foregroundColor(.white)
                .padding()
                .padding(.horizontal)
                .background(buttonColor)
                .cornerRadius(10)
        })
    }
}

#Preview {
    BindingBootcamp()
}
