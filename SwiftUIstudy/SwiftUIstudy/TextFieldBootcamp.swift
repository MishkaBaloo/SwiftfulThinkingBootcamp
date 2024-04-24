 //
//  TextFieldBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 24.04.2024.
//

import SwiftUI

struct TextFieldBootcamp: View {
    
    @State var textFieldText: String = ""
    @State var dataArray: [String] = []
    
    var body: some View {
        NavigationStack{
            VStack {
                TextField("Type something here...", text: $textFieldText)
                //.textFieldStyle(RoundedBorderTextFieldStyle())
                    .padding()
                    .background(Color.gray.opacity(0.3).clipShape(.rect(cornerRadius: 10)))
                    .foregroundStyle(.red)
                    .font(.headline)
                
                
                Button(action: {
                    if textIsAppropriate() {
                        savetext()
                    }
                }, label: {
                    Text("Save".uppercased())
                        .padding()
                        .frame(maxWidth: .infinity)
                        .background(textIsAppropriate() ? Color.blue : Color.gray)
                        .clipShape(.rect(cornerRadius: 10))
                        .foregroundStyle(.white)
                        .font(.headline)
                })
                .disabled(!textIsAppropriate())
                
                ForEach(dataArray, id: \.self) { data in
                    Text(data)
                }
                
                Spacer()
            }
            .padding()
            .navigationTitle("TextField Bootcam!")
        }
    }
    
    func textIsAppropriate() -> Bool {
        //chek text
        if textFieldText.count >= 3 {
            return true
        }
        return false
    }
    
    func savetext() {
        dataArray.append(textFieldText)
        textFieldText = ""
    }
}

#Preview {
    TextFieldBootcamp()
}
