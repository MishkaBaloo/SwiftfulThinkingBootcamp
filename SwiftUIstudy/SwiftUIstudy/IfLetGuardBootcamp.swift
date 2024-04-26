//
//  IfLetGuardBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 26.04.2024.
//

import SwiftUI

struct IfLetGuardBootcamp: View {
    
    @State var currentUserID: String? = nil
    @State var displayText: String? = nil
    @State var isLoading: Bool = false
    
    var body: some View {
        NavigationStack{
            VStack{
                Text("Here we are practicing in safe coding!")
                
                if let text = displayText {
                    Text(text)
                        .font(.headline)
                }
                
                // DO NOT USE! EVER!
                // DO NOT FORCE UNWRAP VALUES, VIEW WILL CRASH OUT
//                Text(displayText!)
//                    .font(.headline)
                
                if isLoading {
                    ProgressView()
                }
                
                Spacer()
            }
            .navigationTitle("Safe Coding")
            .onAppear{
                loadData2()
            }
        }
    }
    
    func loadData() {
        
        if let userID = currentUserID {
            isLoading = true
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
            }
        } else {
            displayText = "Error. This is no user ID!"
        }
    }
    
    func loadData2() {
        
        guard let userID = currentUserID else {
            displayText = "Error. This is no user ID!"
            return
        }
            DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
                displayText = "This is the new data! User ID is: \(userID)"
                isLoading = false
        }
    }
}

#Preview {
    IfLetGuardBootcamp()
}
