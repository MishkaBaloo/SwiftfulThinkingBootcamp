//
//  EnvironmentObjectBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 29.04.2024.
//

import SwiftUI


class EnvironmentViewModel: ObservableObject{
    
    @Published var dataArray: [String] = []

    init() {
        getData()
    }
    
    func getData() {
        self.dataArray.append(contentsOf: ["iPhone", "iPad", "iMac", "Apple Watch"])
    }
}

struct EnvironmentObjectBootcamp: View {
    
    @StateObject var viewModel: EnvironmentViewModel = EnvironmentViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(viewModel.dataArray, id: \.self) { item in
                    NavigationLink {
                        DetailView(selectedItem: item)
                    } label: {
                        Text(item)
                    }
                }
            }
            .navigationTitle("IOS Devices")
        }
        .environmentObject(viewModel)
    }
}

struct DetailView: View {
    
    let selectedItem: String
    var body: some View {
        ZStack{
            // background
            Color.orange.ignoresSafeArea()
            
            //foreground layer
            NavigationLink(destination: FinalView(), label: {
                Text(selectedItem)
                    .font(.headline)
                    .foregroundStyle(Color.orange)
                    .padding()
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(.rect(cornerRadius: 30))
            })
        }
    }
}

struct FinalView: View {
    
    @EnvironmentObject var viewModel: EnvironmentViewModel
    
    var body: some View {
        ZStack{
            //background
            LinearGradient(colors: [Color(uiColor: #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)), Color(uiColor: #colorLiteral(red: 0.09019608051, green: 0, blue: 0.3019607961, alpha: 1))], startPoint: .topLeading, endPoint: .bottomTrailing)
                .ignoresSafeArea()
            
            //foregronud layer
            ScrollView{
                VStack(spacing: 20, content: {
                    ForEach(viewModel.dataArray, id: \.self) { item in
                        Text(item)
                    }
                })
                .foregroundStyle(Color.white)
                .font(.largeTitle)
            }
        }
    }
}

#Preview {
    EnvironmentObjectBootcamp()
    //DetailView(selectedItem: "iPhone")
    //FinalView()
}
