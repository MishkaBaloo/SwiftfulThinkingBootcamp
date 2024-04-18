//
//  ConditionalBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 19.04.2024.
//

import SwiftUI

struct ConditionalBootcamp: View {
    
    @State var showCircle: Bool = false
    @State var showRectangle: Bool = false
    @State var isLoading: Bool = false
    
    var body: some View {
        VStack(spacing: 20){
            
            Button("is loading: \(isLoading.description)".uppercased()) {
                isLoading.toggle()
            }
            
            if isLoading {
                ProgressView()
            } 
            
            
            //            Button("Circle button: \(showCircle.description)") {
            //                showCircle.toggle()
            //            }
            //
            //            Button("Rectangle button: \(showRectangle.description)") {
            //            showRectangle.toggle()
            //            }
            //
            //            // if showCircle == true {
            //            //if !showCircle {
            //
            //            if showCircle { // like a short version of the upper one
            //                Circle()
            //                    .frame(width: 100, height: 100)
            //            }
            //
            //            if showRectangle {
            //                Rectangle()
            //                    .frame(width: 100, height: 100)
            //            }
            //
            //            if showCircle || showRectangle { // logical OR
            //                RoundedRectangle(cornerRadius: 25.0)
            //                    .frame(width: 200, height: 100)
            //            }
            
            
            //             if !showCircle && !showRectangle { // logical AND
            //                RoundedRectangle(cornerRadius: 25.0)
            //                    .frame(width: 200, height: 100)
            //            }
            
            Spacer()
        }
    }
}

#Preview {
    ConditionalBootcamp()
}
