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
    
    var grandTotalAfterTip: Double {
        var result: Double = 0.0
        
        let tipSelection:Double = Double(tipPercentage)
        
        let tipValue: Double = (checkAmount / 100) * tipSelection
        result = checkAmount + tipValue
        
        return result
    }
    
    var totalPerPerson: Double {
        var output: Double
        
        let peopleCount:Double = Double(numberOfPeople + 2) // Adding 2 as to compensate for how "ForEach(2..100)" starts at 0 (not 2)
        
        let amountPerPerson: Double = grandTotalAfterTip / peopleCount

        output = amountPerPerson
        return output
    }
    
    // Bonus challenge
    var currencyType: FloatingPointFormatStyle<Double>.Currency {
        var result: FloatingPointFormatStyle<Double>.Currency
        
        result = .currency(code: Locale.current.currency?.identifier ?? "USD")
        return result
    }
    
    @FocusState private var amountIsFocused: Bool // "@FocusState" doesn't take a value when created, so default state is false. If it was possible that you could set it to true as the launch state, it would be annoying to have the keyboard pop up when the app is launched :O
    
    var body:some View {
        NavigationView{
            Form {
                Section {
                    // // Depreciated in iOS 16
                    // TextField("Amount", value: $checkAmount, format: .currency(code: Locale.current.currencyCode ?? "USD"))
                    
                    // Xcode recommends this call instead
                    TextField("Amount", value: $checkAmount, format: currencyType)
                        .keyboardType(.decimalPad)
                        .focused($amountIsFocused)
                    
                    Picker("Number of people", selection: $numberOfPeople){
                        ForEach(2..<100) {
                            Text("\($0) people")
                        }
                    }
                }
                
                Section {
                    Picker("Tip percentage", selection: $tipPercentage) {
                        ForEach(0..<101) { // Challenge 3
                            Text($0, format: .percent)
                        }
                    }
                    .pickerStyle(.navigationLink) // This directs to a submenu
                    
                    
                } header: {
                    Text("How much tip do you want to leave?")
                }
                
                
                // Challenge 2
                Section {
                    Text(grandTotalAfterTip, format: currencyType)
                } header: {
                    Text("Grand total after tip")
                }
                
                Section {
                    Text(totalPerPerson, format: currencyType)
                } header: { // Challenge 1
                    Text("Amount Per Person")
                }
            }
            .navigationTitle("WeSplit")
            .toolbar {
                ToolbarItemGroup(placement: .keyboard) {
                    Spacer()
                    
                    Button("Done") {
                        amountIsFocused = false
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
