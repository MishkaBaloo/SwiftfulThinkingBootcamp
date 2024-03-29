//
//  ColorsBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 29.03.2024.
//

import SwiftUI

struct Colors_bootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
        .fill(
        // under this coment just solution to Color(colorLiteral)
        //let color = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        //Color(UIColor.secondarySystemBackground)
        //RoundedRectangle(cornerRadius: 25.0)
           // .fill(Color(color))
            Color("CustomColor")
        )
            .frame(width: 300, height: 200)
            .shadow(color: .pink, radius: 25, x: 0.0, y: 0.0)
            //.shadow(radius: 25)
            //.shadow(color:Color("CustomColor").opacity(0.3), radius: 10, x: -20, y: -20)
    }
}

#Preview {
    Colors_bootcamp()
}
