//
//  TextBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 29.03.2024.
//

import SwiftUI

struct Text_bootcamp: View {
    var body: some View {
        //Text("Hello, World! This is Michael and i'm realy like this part of codding and study")
        Text("Hello, World!".capitalized)
            //.font(.body)
            //.fontWeight(.semibold)
            //.bold()
            //.underline()
//           .underline(true, color: Color.red)
//           .italic()
//            .strikethrough(true, color: Color.green)
            //.font(.system(size: 24, weight: .semibold, design: .serif))
            //.baselineOffset(-50.0)
            //.kerning(10)
            //.multilineTextAlignment(.leading)
            .foregroundColor(.red)
            .frame(width: 200, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, alignment: .center)
            .minimumScaleFactor(0.1)
    }
}

#Preview {
    Text_bootcamp()
}
