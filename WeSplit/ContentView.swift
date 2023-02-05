//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
   @State private var name = ""
    
    var body:some View {
        Form {
            TextField("Enter your name", text: $name) // "$" makes it a two-way binding; It'll get written to the property
            Text("Your name is \(name)") // Without the "$", it only reads the property
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
