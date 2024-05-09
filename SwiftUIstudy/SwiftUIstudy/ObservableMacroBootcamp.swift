//
//  ObservableMacroBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 09.05.2024.
//

import SwiftUI

@Observable class ObservableViewModel {
    
    var title: String = "Some title"
    @ObservationIgnored var value: String = "Some title"
}

struct ObservableMacroBootcamp: View {
    
    @State private var viewModel = ObservableViewModel()
    
    var body: some View {
        VStack(spacing: 40){
            Button(viewModel.title) {
                viewModel.title = "New title!"
            }
            SomeChildView(viewModel: viewModel)
            
            SomeThirdView()
        }
        .environment(viewModel)
    }
}

struct SomeChildView: View {
    
    @Bindable var viewModel: ObservableViewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "adksadjksah"
        }
    }
}

struct SomeThirdView: View {
    
    @Environment(ObservableViewModel.self) var viewModel
    
    var body: some View {
        Button(viewModel.title) {
            viewModel.title = "dsald;sajkdlsajdlkjalskd"
        }
    }
}

#Preview {
    ObservableMacroBootcamp()
}
