//
//  StackBootcamp (V,H,Z).swift
//  SwiftUIstudy
//
//  Created by user on 31.03.2024.
//

import SwiftUI

struct StackBootcamp__V_H_Z_: View {
        // Vstacks -> Vertical
        // Hstacks -> Horizontal
        // Zstacks -> zIndex (back to front)
        var body: some View {
            HStack(alignment: .bottom, spacing: 0, content: {
                    Rectangle()
                        .fill(Color.red)
                        .frame(width: 200, height: 200)
            
                    Rectangle()
                        .fill(Color.green)
                        .frame(width: 150, height: 150)
                    Rectangle()
                        .fill(Color.orange)
                        .frame(width: 100, height: 100)
                })
            }
    }

#Preview {
    StackBootcamp__V_H_Z_()
}
