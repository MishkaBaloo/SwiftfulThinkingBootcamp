//
//  SafeAreaBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 10.04.2024.
//

import SwiftUI

struct SafeAreaBootcamp: View {
    var body: some View {

        ZStack {
            
          
            ScrollView{
                VStack {
                    Text("Title goes here")
                        .font(.largeTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    ForEach(0..<10) {index in
                        RoundedRectangle(cornerRadius: 25.0)
                            .fill(Color.white)
                            .frame(height: 150)
                            .shadow(radius: 10)
                            .padding(20)
                        
                    }
                }
            }
            .background(
                Color.blue
                    .edgesIgnoringSafeArea(.all)
            )
            //.background(Color.red)
            //Same thing because we don't need it in new version of Xcode, the Xcode automaticly put our backgrond in front of full screen with good safe area
        }
        
        
        
        
        
        
        
        
//        ZStack {
//            
//            //Background
//            Color.blue
//                .edgesIgnoringSafeArea(.all)
//            
//            //Foreground
//            
//            VStack {
//                Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
//                Spacer()
//                
//            }
//                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                .background(Color.red)
//        }
    }
}

#Preview {
    SafeAreaBootcamp()
}
