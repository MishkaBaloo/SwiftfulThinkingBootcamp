//
//  ForEachBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 04.04.2024.
//

import SwiftUI

struct ForEachBootcamp: View {
    
    let data: [String] = ["Hi", "HELLO", "HEY EVERYONE"]
    let myString: String = "Hello"
    
    var body: some View {
        VStack{
            ForEach(data.indices, id: \.self) { index in
            Text("\(data[index]) \(index)")
            }
        }
    }
}
#Preview {
    ForEachBootcamp()
}
