//
//  AlertsBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 20.04.2024.
//

import SwiftUI

struct AlertsBootcamp: View {
    
    @State var showAlert: Bool = false
    @State var alertType: MyAlerts? = nil
//    @State var alertTitle: String = ""
//    @State var alertMessage: String = ""
    @State var backGroundColor: Color = Color.yellow
    
    enum MyAlerts {
        case succes
        case error
    }
    
    var body: some View {
        ZStack {
            backGroundColor.edgesIgnoringSafeArea(.all)
            VStack {
                Button("BUTTON 1") {
                    alertType = .error
//                    alertTitle = "error uploading video".uppercased()
//                    alertMessage = "The video could not be uploaded"
                    showAlert.toggle()
                }
                Button("BUTTON 2") {
                    alertType = .succes
//                    alertTitle = "Succesfully uploaded video 🥳"
//                    alertMessage = "Your video is now public!"
                    showAlert.toggle()
                }
            }
            .alert(isPresented: $showAlert, content:{
                getAlert()
            })
        }
    }
        
        func getAlert() -> Alert{
            switch alertType {
            case .error:
                return Alert(title: Text("There was an error!"))
            case .succes:
                return Alert(title: Text("This was success!"), message: nil,
                             dismissButton: .default(Text("OK"), action: {
                    backGroundColor = .green
                }))
            default:
                return Alert(title: Text("ERROR"))
            }
            
            
//            return Alert(
//                title: Text(alertTitle),
//                message: Text(alertMessage),
//                dismissButton: .default(Text("OK")))
            
//            return Alert(
//                title: Text("This is the title"),
//                message: Text("Here we will describe the error"),
//                primaryButton: .destructive(Text("DELETE"),action: {
//                    backGroundColor = .red
//                }),
//                secondaryButton: .cancel())
            //Alert(title: Text("There was an error!"))
        }
    }

#Preview {
    AlertsBootcamp()
}
