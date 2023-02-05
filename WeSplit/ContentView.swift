//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    let students:[String] = ["Harry", "Hermione", "Ron"]
    @State private var selectedStudent = "Harry"
    
    let messageSelection:String = {
        return """
    Select your student
    Current student:
"""
    }()
    
    var body:some View {
        NavigationView {
            Form {
                Picker(messageSelection + selectedStudent, selection: $selectedStudent) {
                    ForEach(students, id:\.self) {
                        Text("\($0)")
                    }.padding()
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
