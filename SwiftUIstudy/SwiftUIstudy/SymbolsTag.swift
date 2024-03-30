//
//  SymbolsTag.swift
//  SwiftUIstudy
//
//  Created by user on 30.03.2024.
//

import SwiftUI

struct SymbolsTag: View {
    var body: some View {
        Image(systemName: "car") //to add an icon we need to place our cursor in between the quotes and clik on + on the top right side and last tab should be a "Symbols tab"
            .resizable()
            .font(.largeTitle)
            .frame(width: 300, height: 300)
            
    }
}

#Preview {
    SymbolsTag()
}
