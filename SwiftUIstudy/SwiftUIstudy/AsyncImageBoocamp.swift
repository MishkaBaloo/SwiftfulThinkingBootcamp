//
//  AsyncImageBoocamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 02.05.2024.
//

import SwiftUI

struct AsyncImageBoocamp: View {
    let url = URL(string: "https://picsum.photos/400")
    
    var body: some View {
        
        AsyncImage(url: url) { phase in
            switch phase {
            case .empty:
                ProgressView()
            case .success(let returnedImage):
                returnedImage
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .clipShape(.rect(cornerRadius: 20))
            case .failure:
                Image(systemName: "questionmark")
                    .font(.headline)
            default:
                Image(systemName: "questionmark")
                    .font(.headline)
            }
        }
        
//        AsyncImage(url: url, content: { returnedImage in
//            returnedImage
//                .resizable()
//                .scaledToFit()
//                .frame(width: 100, height: 100)
//                .clipShape(.rect(cornerRadius: 20))
//        }, placeholder: {
//            ProgressView()
//        })
    }
}

#Preview {
    AsyncImageBoocamp()
}
