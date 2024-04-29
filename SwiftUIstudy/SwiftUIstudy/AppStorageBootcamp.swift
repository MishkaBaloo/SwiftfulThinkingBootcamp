//
//  AppStorageBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 29.04.2024.
//

import SwiftUI

struct AppStorageBootcamp: View {
    
    @AppStorage("name") var currentUserName: String?
    
    var body: some View {
        VStack(spacing: 20, content: {
            Text(currentUserName ?? "Add Name Here")
            
            if let name = currentUserName {
                Text(name)
            }
            
            Button("Save".uppercased()) {
                let name: String = "Emily"
                currentUserName = name
            }
        })
    }
}

#Preview {
    AppStorageBootcamp()
}
