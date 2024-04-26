//
//  DocumentationBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 26.04.2024.
//

import SwiftUI

struct DocumentationBootcamp: View {
    
    // MARK: PROPERTIES
    
    @State var data: [String] = ["Apples", "Oranges", "Bananas"]
    @State var showAlert: Bool = false
    
    // MARK: BODY
    
    // Michael - Working cope - things to do:
    /*
     1) Fix alert
     2) Fix title
     */
    
    var body: some View {
        NavigationStack{ // START: NAV
            ZStack {
                // background
                Color.red.ignoresSafeArea()
                
                // foreground
                foregroundLayer
                    .navigationTitle("Documentation")
                    .toolbar {
                        ToolbarItem(placement: .topBarTrailing) {
                            Button("ALERT") {
                                showAlert.toggle()
                            }
                        }
                    }
                    .alert(isPresented: $showAlert, content: {
                        getAlert(text: "This is alert!")
                    })
            }
        } // END: NAV
    }
    /// This is the foreground layer that holds scrollview
    private var foregroundLayer: some View {
        ScrollView { // START: SCROLLV
            Text("Hello")
            ForEach(data, id: \.self) { name in
                Text(name)
                    .font(.headline)
            }
        } // END: SCROLLV

    }
    
    //MARK: FUNCTIONS
    
    /// Gets an alert with a specified title.
    ///
    /// This function create and returns an alert immediately. The alert will have a title based on the text parameter but it will NOT have a message.
    /// ```
    /// getAlert(text: "Hi") -> Alert(title: Text("Hi))
    /// ```
    ///
    /// - Warning: There is no additional mesage in this alert.
    /// - Parameter text: This is a title for the alert.
    /// - Returns: Returns an alert whis a title.
    func getAlert(text: String) -> Alert{
        return Alert(title: Text(text))
    }
}

// MARK: PREVIEW

#Preview {
    DocumentationBootcamp()
}
