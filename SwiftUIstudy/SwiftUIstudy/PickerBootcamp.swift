//
//  PickerBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 25.04.2024.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var seletion: String = "Most Popular"
    let filterOptions: [String] = [
        "Most recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        List{
            Picker(selection: $seletion){
                ForEach(filterOptions.indices) { index in
                    Text(filterOptions[index])
                        .tag(filterOptions[index])
                }
            }
            label: {
                Text("Picker")}
            .pickerStyle(SegmentedPickerStyle())
            //.background(Color.red)
        }
        
        
//        VStack{
//            HStack{
//                Text("Your age is - ".uppercased() + "\(seletion)")
//                    .font(.headline)
//                    .foregroundColor(Color.white)
//                    .multilineTextAlignment(.center)
//                    .frame(width: 200, height: 70)
//                    .background(Color.blue)
//                    .clipShape(.rect(cornerRadius: 15))
//            }
//            
//            List{
//                Picker(
//                    selection: $seletion,
//                    content: {
//                        ForEach(18..<100) { number in
//                            Text("\(number)")
//                                .font(.headline)
//                                .tag("\(number)")}
//                                .foregroundStyle(Color.red)},
//                    label: {
//                        Text("Select your age")
//                            .font(.headline)
//                    })
//                .pickerStyle(DefaultPickerStyle())
//            }
//        }
    }
}

#Preview {
    PickerBootcamp()
}
