//
//  StateBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 12.04.2024.
//

import SwiftUI

struct StateBootcamp: View {
    @State var backgroundColor: Color = Color.green
    @State var myTitle: String = "My Title"
    @State var count: Int = 0
    
    var body: some View {
        ZStack{
            //Background
            backgroundColor
                .edgesIgnoringSafeArea(.all)
            
            //Content
            VStack(spacing: 20){
                Text(myTitle)
                    .font(.title)
                Text("Count: \(count)")
                    .font(.headline)
                    .underline()
                
                HStack(spacing: 20){
                    Button("BUTTON 1") {
                        backgroundColor = .red
                        myTitle = "Color of the background was changed on RED"
                        count += 1
                    }
                    
                    Button("BUTTON 2") {
                        backgroundColor = .purple
                        myTitle = "Color of the background was changed on PURPLE"
                        count -= 1
                    }
                }
            }
            .foregroundColor(.white)
        }
    }
}

#Preview {
    StateBootcamp()
}
