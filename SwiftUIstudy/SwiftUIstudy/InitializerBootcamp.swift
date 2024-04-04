//
//  InitializerBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 04.04.2024.
//

import SwiftUI

struct InitializerBootcamp: View {
    
    let backgroundcolor: Color
    let count: Int
    let title: String
    
    init(count: Int, fruit: Fruit) {
        self.count = count
        
        if fruit == .apple {
            self.title = "Apples"
            self.backgroundcolor = .red
        } else {
            self.title = "Oranges"
            self.backgroundcolor = .orange
        }
    }
    
    enum Fruit {
        case apple
        case orange
    }
    
    var body: some View {
        VStack(spacing: 12){
            Text("\(count)")
                .font(.largeTitle)
                .foregroundColor(.white)
                .underline()
            Text("\(title)")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: 150, height: 150)
        .background(backgroundcolor)
        .cornerRadius(10)
    }
}

#Preview {
    HStack{
        InitializerBootcamp(count: 100, fruit: .apple)
        InitializerBootcamp(count: 46, fruit: .orange)
    }
}
