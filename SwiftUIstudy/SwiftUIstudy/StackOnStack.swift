//
//  StackOnStack.swift
//  SwiftUIstudy
//
//  Created by user on 31.03.2024.
//

import SwiftUI

struct StackOnStack: View {
    var body: some View {
        ZStack(alignment: .top){
           Rectangle()
                .fill(Color.yellow)
                .frame(width: 300, height: 500, alignment: .center)
            
            VStack(alignment: .leading, spacing: 30){
                Rectangle()
                    .fill(Color.red)
                    .frame(width: 150, height: 150)
                
                Rectangle()
                    .fill(Color.green)
                    .frame(width: 100, height: 100)
                
                HStack(alignment: .bottom) {
                    Rectangle()
                    .fill(Color.purple)
                    .frame(width: 50, height: 50)
                    
                    Rectangle()
                        .fill(Color.pink)
                        .frame(width: 75, height: 75)
                    
                    Rectangle()
                        .fill(Color.blue)
                        .frame(width: 25, height: 25)
                    
                }
                .background(Color.white)
            }
            .background(Color.black)
        }
    }
}

#Preview {
    StackOnStack()
}
