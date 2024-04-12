//
//  ButtonsBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 12.04.2024.
//

import SwiftUI

struct ButtonsBootcamp: View {
    
    @State var title: String = "This is my title".uppercased()

    var body: some View {
        VStack(spacing: 20) {
            Text(title)

                .font(.largeTitle)
                .padding(20)
                .background(Color.green)
                .cornerRadius(30)
                .shadow(color: .yellow, radius: 30)
                .padding(70)
            
         
            Button("Press me!"){
                self.title = "BUTTON #1 WAS PRESSED"
            }
            .font(.headline)
            .fontWeight(.semibold)
            .foregroundColor(.white)
            .padding()
            .padding(.horizontal, 30)
            .background(
                Color.blue
                    .cornerRadius(10)
                    .shadow(radius: 10)
            )
            .accentColor(.white)
            
            
            Button(action: {
                self.title = "Button #2 was pressed".uppercased()
            }, label: {
                Text("Save".uppercased())
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .padding()
                    .padding(.horizontal, 48)
                    .background(
                        Color.blue
                            .cornerRadius(10)
                            .shadow(radius: 10)
                    )
            })
        
            
            Button(action: {
                self.title = "Button #3".uppercased()
            }, label: {
                Circle()
                    .fill(Color.white)
                    .frame(width: 75, height: 75)
                    .shadow(radius: 10)
                    .overlay(
                    Image(systemName: "heart.fill")
                        .font(.largeTitle)
                        .foregroundColor(Color.red)
                        .shadow(radius: 5)
                    )
            })
            
            
            Button(action: {
                self.title = "Button #4".uppercased()
            }, label: {
                Text("Finish".uppercased())
                    .font(.caption)
                    .bold()
                    .foregroundColor(.gray)
                    .padding()
                    .padding(.horizontal, 10)
                    .background(
                        Capsule()
                            .stroke(Color.gray, lineWidth: 2.0)
                    )
            })
        }
    }
}

#Preview {
    ButtonsBootcamp()
}
