//
//  ModelBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 29.04.2024.
//

import SwiftUI

struct UserModel: Identifiable {
    let id: String = UUID().uuidString
    let displayName: String
    let userName: String
    let followerCount: Int
    let isVerified: Bool
}

struct ModelBootcamp: View {
    
    @State var users: [UserModel] = [
        //"Nick", "Emily", "Samantha", "Chris"
        UserModel(displayName: "Nick", userName: "nick123", followerCount: 100, isVerified: true),
        UserModel(displayName: "Emily", userName: "itsemily1995", followerCount: 55, isVerified: false),
        UserModel(displayName: "Smantha", userName: "ninja", followerCount: 355, isVerified: false),
        UserModel(displayName: "Chtis", userName: "chris2009", followerCount: 88, isVerified: true)
    ]
    
    var body: some View {
        NavigationStack{
            List{
                ForEach(users) { user in
                    HStack(spacing: 15) {
                        Circle()
                            .frame(width: 35, height: 35)
                        VStack(alignment: .leading) {
                            Text(user.displayName)
                            Text("@\(user.userName)")
                                .foregroundStyle(Color.gray)
                                .font(.caption)
                        }
                        Spacer()
                        
                        if user.isVerified {
                            Image(systemName: "checkmark.seal.fill")
                                .foregroundStyle(Color.blue)
                        } else {
                            Image(systemName: "minus")
                                .foregroundStyle(Color.red)
                                .font(.caption)
                        }
                        
                        VStack{
                            Text("\(user.followerCount)")
                            Text("Followers")
                                .font(.caption)
                        }
                    }
                    .padding(.vertical, 15)
                    .font(.headline)
                    
                }
            }
            .listStyle(InsetListStyle())
            .navigationTitle("Users")
        }
    }
}

#Preview {
    ModelBootcamp()
}
