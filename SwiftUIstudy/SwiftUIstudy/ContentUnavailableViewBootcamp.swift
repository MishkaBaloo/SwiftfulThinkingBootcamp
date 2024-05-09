//
//  ContentUnavailableViewBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 09.05.2024.
//

import SwiftUI

// this very simple temlate for some empty screen like no left item on shop

struct ContentUnavailableViewBootcamp: View {
    var body: some View {
        
        ContentUnavailableView.search(text: "AKlkaljd")
        
        ContentUnavailableView(
        "No Internet Connection",
        systemImage: "wifi.slash",
        description: Text("Please connect to the internet and try again."))
    }
}

#Preview {
    ContentUnavailableViewBootcamp()
}
