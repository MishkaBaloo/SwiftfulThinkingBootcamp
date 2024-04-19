//
//  TernaryBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 19.04.2024.
//

import SwiftUI

struct TernaryBootcamp: View {
    
    @State var isStartingState: Bool = false
    
    var body: some View {
        VStack{
            Button("Button: \(isStartingState.description)") {
                isStartingState.toggle()
                }
            
            Text(isStartingState ? "Starting state!!".uppercased() : "Ending state.".uppercased())
            
            RoundedRectangle(cornerRadius: isStartingState ? 25.0 : 0)
                    .fill(isStartingState ? Color.red : Color.blue)
                    .frame(
                        width: isStartingState ? 200 : 50,
                        height: isStartingState ? 400 : 50)
                
// Ternary operators is the same as if else operator. if isStartingState == true (?) then color - red, (:) else our var is false color - blue
            
                Spacer()
            }
        }
    }

#Preview {
    TernaryBootcamp()
}
