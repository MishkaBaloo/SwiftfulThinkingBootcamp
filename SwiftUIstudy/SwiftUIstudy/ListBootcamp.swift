//
//  ListBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 20.04.2024.
//

import SwiftUI

struct ListBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    @State var veggies: [String] = ["tomato", "potato", "carrot"]
    
    var body: some View {
        NavigationView {
            List {
                Section(
                    header: 
                        HStack {
                            Text("Fruits")
                            Image(systemName: "flame.fill")
                        }
                        .font(.headline)
                        .foregroundStyle(Color.orange)
                ) {
                        ForEach(fruits, id: \.self) { fruit in
                            Text(fruit.capitalized)
                                .font(.caption)
                                .foregroundStyle(Color.white)
//                                .frame(maxWidth: .infinity, maxHeight: .infinity)
//                                .background(Color.pink)
                                .padding(.vertical)
                        }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                        .listRowBackground(Color.blue)
                    }
                Section(
                    header:
                        HStack {
                            Text("Veggies")
                            Image(systemName: "square")
                        }
                        .foregroundStyle(Color.green)
                ) {
                    ForEach(veggies, id: \.self) { veggies in
                        Text(veggies.capitalized)
                    }
                }
                
            }
            //.listStyle(GroupedListStyle())
            .navigationTitle("Grocery List")
            // toolbar it's navigationBarItems
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    EditButton()
                    }
                ToolbarItem(placement: .topBarTrailing) {
                    addButton
                    }
                }
            }
        .font(.headline)
        .accentColor(.brown)
        }
    
    var addButton: some View {
        Button("Add", action: {
            add()
        })
    }
    
    func delete(indexSet: IndexSet) {
        fruits.remove(atOffsets: indexSet)
    }
    
    func move(indices: IndexSet, newOffset: Int){
        fruits.move(fromOffsets: indices, toOffset: newOffset)
    }
    
    func add() {
        fruits.append("Coconut")
    }
}

#Preview {
    ListBootcamp()
}
