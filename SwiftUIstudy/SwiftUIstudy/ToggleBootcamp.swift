//
//  ToggleBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 25.04.2024.
//

import SwiftUI

struct ToggleBootcamp: View {
    
    @State var toggleIsOn: Bool = false
    @State var colorLiteral: Color = Color.init(uiColor: #colorLiteral(red: 0.5818830132, green: 0.2156915367, blue: 1, alpha: 1))
    
    var body: some View {
        VStack {
            HStack{
               Text("Status:")
                Text(toggleIsOn ? "Online" : "Offline")
            }
            .font(.title)
            Toggle(
                isOn: $toggleIsOn,
                label: {
                    Text("Change status")
                })
            .toggleStyle(SwitchToggleStyle(tint: colorLiteral))
            Spacer()
        }
        .padding(.horizontal, 100)
    }
}
#Preview {
    ToggleBootcamp()
}
