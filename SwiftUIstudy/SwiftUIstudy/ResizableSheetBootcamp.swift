//
//  ResizableSheetBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 04.05.2024.
//

import SwiftUI

struct ResizableSheetBootcamp: View {
    
    @State private var showSheet: Bool = false
    @State private var detents: PresentationDetent = .large
    
    var body: some View {
        Button("Click me") {
            showSheet.toggle()
        }
        .sheet(isPresented: $showSheet, content: {
            MyNextView(detents: $detents)
//                .presentationDetents([.medium, .large])
//                .presentationDetents([.fraction(0.1), .height(300), .medium, .large])
//                .presentationDetents([.height(500)])
//                .presentationDragIndicator(.visible)
//                .interactiveDismissDisabled()
        })
//        .onAppear{
//            showSheet = true
//        }
    }
}

struct MyNextView:  View {
    
    @Binding var detents: PresentationDetent
    
    var body: some View {
        ZStack{
            Color.red.ignoresSafeArea()
            
            VStack(spacing: 20) {
                Button("20%") {
                    detents = .fraction(0.2)
                }
                
                Button("Medium") {
                    detents = .medium
                }
                Button("600 PX") {
                    detents = .height(600)
                }
                Button("LARGE") {
                    detents = .large
                }
            }
        }
        .presentationDetents([.fraction(0.2), .medium, .height(600), .large], selection: $detents)
        .presentationDragIndicator(.hidden)
    }
}

#Preview {
    ResizableSheetBootcamp()
}
