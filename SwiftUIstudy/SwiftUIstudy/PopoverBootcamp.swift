//
//  PopoverBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 19.04.2024.
//

import SwiftUI

struct PopoverBootcamp: View {
    
    @State var showNewScreen: Bool = false
    
    var body: some View {
        ZStack{
            Color.blue
                .edgesIgnoringSafeArea(.all)
            
            VStack{
                Button("Button"){
                    showNewScreen.toggle()
                }
                .foregroundColor(.green)
                .padding(5)
                .background(Color.white.cornerRadius(10))
                .font(.title)
                Spacer()
            }
            //METHOD 1 - SHEET
//            .sheet(isPresented: $showNewScreen, content: {
//                NewScreen()
//            })
            
            // METHOD 2 - TRANSITION
//            ZStack{
//                if showNewScreen {
//                    NewScreen(showNewScreen: $showNewScreen)
//                        .padding(.top, 100)
//                        .transition(.move(edge: .bottom))
//                        .animation(.spring, value: showNewScreen)
//                }
//            }
//            .zIndex(2.0)
            
            //METHOD 3 - ANIMATION OFFSET
            
            NewScreen(showNewScreen: $showNewScreen)
                .padding(.top, 100)
                .offset(y: showNewScreen ? 0 : UIScreen.main.bounds.height)
                .animation(.spring, value: showNewScreen)
        }
    }
}
    struct NewScreen: View {
        
        @Environment(\.dismiss) var dismisScreen
        @Binding var showNewScreen: Bool
        var body: some View {
            ZStack(alignment: .topLeading){
                Color.purple
                    .edgesIgnoringSafeArea(.all)
                
                Button(action: {
                    //dismisScreen()
                    showNewScreen.toggle()
                },label:{
                        Image(systemName: "xmark")
                        .foregroundColor(.white)
                        .font(.largeTitle)
                        .padding(20)
                })
            }
        }
    }


#Preview {
    PopoverBootcamp()
    //NewScreen()
}
