//
//  GroupBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 05.05.2024.
//

import SwiftUI

struct GroupBootcamp: View {
    var body: some View {
        VStack(spacing: 50) {
            Text("Hello, world!")
            
            Group {
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .font(.caption)
            .foregroundStyle(Color.green)
        }
        .foregroundStyle(Color.red)
        .font(.headline)
    }
}

#Preview {
    GroupBootcamp()
}
