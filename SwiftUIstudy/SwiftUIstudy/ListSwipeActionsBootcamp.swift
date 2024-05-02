//
//  ListSwipeActionsBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 02.05.2024.
//

import SwiftUI

struct ListSwipeActionsBootcamp: View {
    
    @State var fruits: [String] = ["apple", "orange", "banana", "peach"]
    
    var body: some View {
        List {
            ForEach(fruits, id: \.self) { // $0. like a fruit in
                Text($0.capitalized)
                    .swipeActions(edge: .trailing, allowsFullSwipe: true) {
                        Button("Archive") {
                            
                        }
                        .tint(Color.gray)
                        
                        Button("Save") {
                            
                        }
                        .tint(Color.green)
                        
                        Button("Unmute") {
                            
                        }
                        .tint(Color.orange)
                    }
                
                    .swipeActions(edge: .leading, allowsFullSwipe: false) {
                        Button("Junk") {
                            
                        }
                        .tint(Color.black)
                    }
            }
            //.onDelete(perform: delete)
        }
    }
        func delete(index: IndexSet) {
            
    }
}

#Preview {
    ListSwipeActionsBootcamp()
}
