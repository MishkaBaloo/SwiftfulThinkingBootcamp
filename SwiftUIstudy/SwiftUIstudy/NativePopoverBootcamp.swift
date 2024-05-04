//
//  NativePopoverBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 05.05.2024.
//

import SwiftUI

struct NativePopoverBootcamp: View {
    
    @State private var showPopover: Bool = false
    @State private var feedBackOptions: [String] = [
    "Very good🥳",
    "Avarege😐",
    "Very bad😱"
    ]
    
    var body: some View {
        ZStack{
            Color.blue.ignoresSafeArea()
            
            VStack{
                
                Spacer()
                
                Button("Provide feedback?") {
                    showPopover.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .font(.headline)
                .foregroundStyle(Color.white)
                .popover(isPresented: $showPopover, attachmentAnchor: .point(.top), content: {
                    ScrollView{
                        VStack(alignment: .leading, spacing: 12, content: {
                            ForEach(feedBackOptions, id: \.self) { option in
                                Button(option) {
                                    
                                }
                                if option != feedBackOptions.last{
                                    Divider()
                                }
                            }
                        })
                        .padding(20)
                    }
                    .presentationCompactAdaptation(.popover)
                })
            }
        }
    }
}

#Preview {
    NativePopoverBootcamp()
}
