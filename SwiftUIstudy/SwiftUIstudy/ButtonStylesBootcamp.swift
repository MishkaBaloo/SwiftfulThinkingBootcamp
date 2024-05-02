//
//  ButtonStylesBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 02.05.2024.
//

import SwiftUI

struct ButtonStylesBootcamp: View {
    var body: some View {
        VStack{
            
            // More usefull in actual app
            Button(action: {
                
            }, label: {
                Text("Good button ")
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
            })
            .buttonStyle(BorderedProminentButtonStyle())
            .buttonBorderShape(.roundedRectangle(radius: 20))
            .controlSize(.large)
            
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.small)
            .buttonStyle(BorderedButtonStyle())
            
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.large)
            .buttonStyle(BorderedButtonStyle())
            
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.extraLarge)
            .buttonStyle(BorderedProminentButtonStyle())
            
            Button("Button title") {
                
            }
            .frame(height: 55)
            .frame(maxWidth: .infinity)
            .controlSize(.mini)
            .buttonStyle(BorderedButtonStyle())
        }
        .padding()
    }
}

#Preview {
    ButtonStylesBootcamp()
        .preferredColorScheme(.dark)
}
