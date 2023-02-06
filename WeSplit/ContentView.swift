//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    @State private var checkAmount:Double = 0.0
    @State private var numberOfPeople: Int = 2
    @State private var tipPercentage:Int = 20
    
    let tipPercentages:[Int] = [10, 15, 20, 25, 0]
    
    var body:some View {
        NavigationView{
            Form {
                Section {
                    // // Depreciated in iOS 16
                    // TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    
                    // Xcode recommends this call instead
                    TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                        .keyboardType(.decimalPad)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                    
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(tipPercentages, id: \.self) {
                            Text($0, format: .percent)
                        }
                    }
                }
                
                Section {
                    var totalAfterTip = checkAmount + (checkAmount * Double(tipPercentage) * 0.01)
                    Text(totalAfterTip, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                    Text(checkAmount, format: .currency(code: Locale.current.currency?.identifier ?? "USD"))
                }
            }
            .navigationTitle("WeSplit")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
