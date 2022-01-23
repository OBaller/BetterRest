//
//  ContentView.swift
//  BetterRest
//
//  Created by naseem on 07/01/2022.
//

import SwiftUI

struct ContentView: View {
    @State var stepperValue = 8
    @State var wakeUpTime = Date.now
    
    var body: some View {
        VStack {
                Stepper("for \(stepperValue) regular sleep", value: $stepperValue, in: 3...14)
                    .padding()
                DatePicker("select time to wake up", selection: $wakeUpTime)
//                .labelsHidden()
                    .padding()
            
            Text(Date.now, format: .dateTime.hour().minute())
        }
    }
    
//    func exampleDate() {
//        let tomorrow = Date.now.addingTimeInterval(86400)
//        let range = Date.now...tomorrow
//    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
