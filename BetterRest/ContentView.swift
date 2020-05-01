//  progress: https://www.hackingwithswift.com/books/ios-swiftui/entering-numbers-with-stepper
//  ContentView.swift
//  BetterRest
//
//  Created by Colucci, David on 4/21/20.
//  Copyright © 2020 Colucci, David. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var sleepAmount: Double = 8.0

    var body: some View {
        Stepper(value: $sleepAmount, in: 4...12, step: 0.25) {
            Text("\(sleepAmount, specifier: "%g") hours")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
