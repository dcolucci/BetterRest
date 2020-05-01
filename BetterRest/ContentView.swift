//  progress: https://www.hackingwithswift.com/books/ios-swiftui/selecting-dates-and-times-with-datepicker
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
        VStack {
            Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
                Text("\(sleepAmount, specifier: "%g") hours")
            }
            DatePicker("Please enter a time", selection: $wakeUp, in: Date()..., displayedComponents: .date)
                .labelsHidden()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
