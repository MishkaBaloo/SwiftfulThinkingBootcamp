//
//  TextEditorBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 24.04.2024.
//

import SwiftUI

struct TextEditorBootcamp: View {
    
    @State var textEditorText: String = "This is the starting text."
    @State var savedText: String = ""
    @State var backgroundColorEditor: Color = Color.init(uiColor: #colorLiteral(red: 0.8374180198, green: 0.8374378085, blue: 0.8374271393, alpha: 1))
    @State var colorTextEditor: Color = Color.init(uiColor: #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1))
    
    var body: some View {
        NavigationView{
            VStack {
                TextEditor(text: $textEditorText)
                    .frame(height: 250)
                    .foregroundStyle(colorTextEditor)
                    .colorMultiply(backgroundColorEditor)
                    .clipShape(.rect(cornerRadius: 10))
                Button(action: {
                    savedText = textEditorText
                }, label: {
                    Text("Save".uppercased())
                        .font(.headline)
                        .foregroundStyle(Color.white)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .clipShape(.rect(cornerRadius: 10))
                })
                Text(savedText)
                Spacer()
            }
            .padding()
            //.background(Color.green)
            .navigationTitle("TextEditor Bootcamp!")
        }
    }
}

#Preview {
    TextEditorBootcamp()
}
