//
//  AnyLayoutBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 05.05.2024.
//

import SwiftUI

// https://useyourloaf.com/blog/size-class/

struct AnyLayoutBootcamp: View {
    
    @Environment(\.horizontalSizeClass) private var horizontalSiceClass
    @Environment(\.verticalSizeClass) private var verticalSiceClass

    
    var body: some View {
        VStack(spacing: 12, content: {
            Text("Horizontal: \(horizontalSiceClass.debugDescription)")
            Text("Vertical: \(verticalSiceClass.debugDescription)")
            
            let layout: AnyLayout = horizontalSiceClass == .compact ? AnyLayout(VStackLayout()) : AnyLayout(HStackLayout())
            
            layout {
                Text("Alpha")
                Text("Beta")
                Text("Gamma")
            }
            
//            if horizontalSiceClass == .compact {
//                VStack{
//                    Text("Alpha")
//                    Text("Beta")
//                    Text("Gamma")
//                }
//                } else {
//                    HStack{
//                        Text("Alpha")
//                        Text("Beta")
//                        Text("Gamma")
//                }
//            }
        })
    }
}

#Preview {
    AnyLayoutBootcamp()
}
