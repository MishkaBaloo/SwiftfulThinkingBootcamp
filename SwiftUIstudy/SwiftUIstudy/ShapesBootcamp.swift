//
//  ShapesBootcamp.swift
//  SwiftUIstudy
//
//  Created by user on 29.03.2024.
//

import SwiftUI

struct Shapes_bootcamp: View {
    var body: some View {
       // Circle()
        //Ellipse()
        //Capsule(style: .circular)
        RoundedRectangle(cornerRadius: 10)
            //.fill(Color.green)
            //.foregroundColor(.pink)
            //.stroke()
            //.stroke(Color.red)
            //.stroke(Color.blue, lineWidth: 30)
            //.stroke(Color.orange, style: StrokeStyle(lineWidth: 30, lineCap: .round, dash: [30]))
            .trim(from: 0.4, to: 1.0)
            //.stroke(Color.purple, lineWidth: 50)
            .frame(width: 300, height: 200)
    }
}

#Preview {
    Shapes_bootcamp()
}
