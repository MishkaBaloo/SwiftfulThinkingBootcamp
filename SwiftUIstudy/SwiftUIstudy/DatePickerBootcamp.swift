//
//  DatePickerBootcamp.swift
//  SwiftUIstudy
//
//  Created by Michael on 25.04.2024.
//

import SwiftUI

struct DatePickerBootcamp: View {
    
    @State var selectDate: Date = Date()
    let startingDate: Date = Calendar.current.date(from: DateComponents(year: 2018)) ?? Date()
    let endingDate: Date = Date()
    var dateFormater: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .full
        return formatter
    }
    
    var body: some View {
        VStack{
            Text("Select date is:".uppercased())
                .padding(2)
            Text(dateFormater.string(from: selectDate))
                .frame(maxWidth: .infinity)
                .background(Color.red)
                .font(.title)
            //DatePicker("Select a Date", selection: $selectDate)
            //DatePicker("Select a Date", selection: $selectDate, displayedComponents: [.date, .hourAndMinute])
            DatePicker("Select a Date", selection: $selectDate, in: startingDate...endingDate,displayedComponents: [.date])
                .padding()
                .tint(Color.blue)
                .datePickerStyle(
                    CompactDatePickerStyle()
                    //GraphicalDatePickerStyle()
                    //WheelDatePickerStyle()
                )
        }
    }
}

#Preview {
    DatePickerBootcamp()
}
