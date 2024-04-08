//
//  GridBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 08.04.2024.
//

import SwiftUI

struct GridBootcamp: View {
    
    let columns: [GridItem] = [
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil),
        GridItem(.flexible(), spacing: 6, alignment: nil)
        
    ]
    
    var body: some View {
        ScrollView{
            
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 400)
            
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6,
                      pinnedViews: [.sectionHeaders],
                      content: {
                
                Section(header: 
                    Text("Section 1")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.blue)
                    .cornerRadius(50)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .frame(height: 150)
                    }
                }
                
                Section(header:
                    Text("Section 2")
                    .foregroundColor(Color.white)
                    .font(.title)
                    .frame(maxWidth: .infinity, alignment: .center)
                    .background(Color.red)
                    .cornerRadius(50)
                    .padding()
                        
                ) {
                    ForEach(0..<20) { index in
                        Rectangle()
                            .fill(Color.green)
                            .frame(height: 150)
                    }
                }
            })
        }
    }
}

#Preview {
    GridBootcamp()
}
