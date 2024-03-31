//
//  StackWithText.swift
//  SwiftUIstudy
//
//  Created by user on 31.03.2024.
//

import SwiftUI

struct StackWithText: View {
    var body: some View {
        VStack(spacing: 50){
            
            ZStack{
                Circle()
                    .frame(width: 100, height: 100)
                
                Text("1")
                    .font(.title)
                    .foregroundColor(.white)
            }
            
            Text("1")
                .font(.title)
                .foregroundColor(.white)
                .background(
                Circle()
                    .frame(width: 100, height: 100)
                )
        }
    }
}

        
//        VStack(alignment: .center, spacing: 20){
//            Text("5")
//                .font(.largeTitle)
//                .underline()
//            
//            Text("Items in your cart")
//                .font(.caption)
//                .foregroundColor(.gray)
//        }
  
#Preview {
    StackWithText()
}
