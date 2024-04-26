//
//  SliderBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 26.04.2024.
//

import SwiftUI

struct SliderBootcamp: View {
    @State var sliderValue: Double = 3
    @State var color: Color = .red
    
    var body: some View {
        VStack {
            Text("Rating:")
            Text(
                String(format: "%.0f", sliderValue)
                //"\(sliderValue)"
            )
            .foregroundStyle(color)
            //Slider(value: $sliderValue)
            //Slider(value: $sliderValue, in: 1...5)
            //Slider(value: $sliderValue, in: 1...5, step: 0.5)
            Slider(
                value: $sliderValue,
                in: 1...5,
                step: 1.0,
                onEditingChanged: {_ in
                    color = .green
                },
                minimumValueLabel: Text("1")
                    .font(.headline)
                    .foregroundStyle(Color.blue)
                ,
                maximumValueLabel: Text("5")
                    .font(.headline)
                    .foregroundStyle(Color.blue)
                ,
                label: {
                    Text("Title")
                })
                .padding(.horizontal)
                .tint(Color.red)
        }
    }
}

#Preview {
    SliderBootcamp()
}
