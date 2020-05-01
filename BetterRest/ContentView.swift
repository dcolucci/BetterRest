//  progress: https://www.hackingwithswift.com/books/ios-swiftui/working-with-dates
//  ContentView.swift
//  BetterRest
//
//  Created by Colucci, David on 4/21/20.
//  Copyright © 2020 Colucci, David. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount: Double = 8.0
    @State private var wakeUp: Date = Date()

    var body: some View {
        var components = DateComponents()
        components.hour = 8
        components.minute = 0
        let date = Calendar.current.date(from: components) ?? Date()

        let otherComponents = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hour = otherComponents.hour ?? 0
        let minute = otherComponents.minute ?? 0

        let formatter = DateFormatter()
        formatter.timeStyle = .short
        let dateString = formatter.string(from: Date())

        return VStack {
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%g") hours")
            }
            DatePicker("Please enter a time", selection: $wakeUp, in: Date()..., displayedComponents: .date)
                .labelsHidden()
            Text("\(date)")
            Text("\(hour): \(minute)")
            Text("\(dateString)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
