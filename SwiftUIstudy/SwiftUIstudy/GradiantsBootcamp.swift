//
//  GradiantsBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 30.03.2024.
//

import SwiftUI

struct GradiantsBootcamp: View {
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(
                //Color.red
                //(press "command" and "/" on keyboard to do all selected cod as comment
                //Under this coment is solution to can't use Lineargradiant in new Xcode from lessons
//           LinearGradient(colors:
//            [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))],
//                startPoint: .leading,
//                endPoint: .trailing)
//                RadialGradient(
//                    gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.2392156869, green: 0.6745098233, blue: 0.9686274529, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.2196078449, green: 0.007843137719, blue: 0.8549019694, alpha: 1))]),
//                    center: .leading,
//                    startRadius: 5,
//                    endRadius: 400)
                AngularGradient(
                    gradient: Gradient(colors: [Color(uiColor: #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.8078431487, green: 0.02745098062, blue: 0.3333333433, alpha: 1))]),
                    center: .topLeading,
                    angle: .degrees(360 + 25))
        )
            .frame(width: 300, height: 200)
    }
}

#Preview {
    GradiantsBootcamp()
}
