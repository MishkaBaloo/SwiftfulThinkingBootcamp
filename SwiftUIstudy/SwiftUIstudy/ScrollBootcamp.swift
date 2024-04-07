//
//  ScrollBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 07.04.2024.
//

import SwiftUI

struct ScrollBootcamp: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0..<10) { index in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHStack{
                            ForEach(0..<20) { index in
                                RoundedRectangle(cornerRadius: 25.0)
                                    .fill(Color.white)
                                    .frame(width: 200, height: 150)
                                    .shadow(radius: 10)
                                    .padding()
                            }
                        }
                    }
                }
            }
        }
    }
}

//        ScrollView(.vertical, showsIndicators: false, content: {
//            VStack{
//                ForEach(0..<50) { index in
//                    Rectangle()
//                        .fill(Color.blue)
//                        .frame(height: 300)
//                    }
//                }
//            })

#Preview {
    ScrollBootcamp()
}
