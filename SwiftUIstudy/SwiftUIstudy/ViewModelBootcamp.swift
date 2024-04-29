//
//  ViewModelBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 29.04.2024.
//

import SwiftUI

struct FruitModel: Identifiable {
    let id: String = UUID().uuidString
    let name: String
    let count: Int
}

class FruitViewModel: ObservableObject {
    
    @Published var fruitArray: [FruitModel] = []
    @Published var isLoading: Bool = false
    
    init() {
        getFruits()
    }
    
    func getFruits() {
        let fruit1 = FruitModel(name: "Orange", count: 1)
        let fruit2 = FruitModel(name: "Banana", count: 2)
        let fruit3 = FruitModel(name: "Watermelon", count: 88)
        
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0, execute: {
            self.fruitArray.append(fruit1)
            self.fruitArray.append(fruit2)
            self.fruitArray.append(fruit3)
            self.isLoading = false
        })
    }
    
    func deleteFruit(index: IndexSet) {
        fruitArray.remove(atOffsets: index)
    }
}

struct ViewModelBootcamp: View {
    
    // @StateObject -> USE THIS ON CREATION/INIT
    // @ObservedOblect -> USE THIS FOR SUBVIEWS
    @StateObject var fruitViewModel: FruitViewModel = FruitViewModel()
    
    var body: some View {
        NavigationStack{
            List{
                
                if fruitViewModel.isLoading {
                    ProgressView()
                } else {
                    ForEach(fruitViewModel.fruitArray) { fruit in
                        HStack{
                            Text("\(fruit.count)")
                                .foregroundStyle(Color.red)
                            Text(fruit.name)
                                .font(.headline)
                                .bold()
                        }
                    }
                    .onDelete(perform: fruitViewModel.deleteFruit)
                }
            }
            .listStyle(GroupedListStyle())
            .navigationTitle("Fruit list")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    NavigationLink(destination: RandomScreen(fruitViewModel: fruitViewModel), label: {
                        Image(systemName: "arrow.right")
                        .font(.title)
                    })
                }
            }
        }
    }
}


struct RandomScreen: View {
    
    @Environment(\.dismiss) var presentationMode
    @ObservedObject var fruitViewModel: FruitViewModel
    
    var body: some View {
        ZStack{
            Color.green.ignoresSafeArea()
            
            VStack{
                ForEach(fruitViewModel.fruitArray) { fruit in
                    Text(fruit.name)
                        .foregroundStyle(Color.white)
                        .font(.headline)
                }
            }
        }
    }
}

#Preview {
    ViewModelBootcamp()
}
