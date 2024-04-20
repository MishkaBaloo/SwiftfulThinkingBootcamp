//
//  ActionSheetBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 20.04.2024.
//

import SwiftUI

struct ActionSheetBootcamp: View {
    
    @State var showActionSheep: Bool = false
    @State var actionSheepOptin: ActinSheetOption = .isOtherPost
    
    enum ActinSheetOption {
        case isMyPost
        case isOtherPost
    }
    
    var body: some View {
        VStack {
            HStack{
                Circle()
                    .frame(width: 30, height: 30)
                Text("@username")
                Spacer()
                Button(action: {
                    actionSheepOptin = .isOtherPost
                    showActionSheep.toggle()
                }, label: {
                    Image(systemName: "ellipsis")
                })
                .accentColor(.primary)
            }
            .padding(.horizontal)
            
            Rectangle()
                .aspectRatio(1.0, contentMode: .fit)
        }
        .actionSheet(isPresented: $showActionSheep, content: getActionSheet)
    }
    
    
    
    // The old version of ActionShhet, the new one is using .confirmationDialog
    //        .actionSheet(isPresented: $showActionSheep, content: {
    //            ActionSheet(title: Text("This is the sheet"))
    //        })
    
    
    func getActionSheet() -> ActionSheet {
        
        let shareButton: ActionSheet.Button = .default(Text("Share")){
            // add code to share post
        }
        let reportButton: ActionSheet.Button = .destructive(Text("Report")){
            // add code to reporte post
        }
        let deleteButton: ActionSheet.Button = .destructive(Text("Delete")){
            // add code to delete these post
        }
        let cancelButton: ActionSheet.Button = .cancel()
        let title = Text("What woud you like to do?")
        
        switch actionSheepOptin {
        case .isOtherPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, cancelButton])
        case .isMyPost:
            return ActionSheet(
                title: title,
                message: nil,
                buttons: [shareButton, reportButton, deleteButton, cancelButton])
        }
        
        //        return ActionSheet(title: Text("This is the title!"))
        //
        //        let button1: ActionSheet.Button = .default(Text("DEFAULT"))
        //        let button2: ActionSheet.Button = .destructive(Text("DESTRUCTIVE"))
        //        let button3: ActionSheet.Button = .cancel()
        //
        //        return ActionSheet(
        //            title: Text("This is the title"),
        //            message: Text("This is the message"),
        //            buttons: [button1, button2, button3])
    }
}

#Preview {
    ActionSheetBootcamp()
}
