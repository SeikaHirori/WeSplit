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
            TextField("Enter your name", text: name)
            Text("Hello world!")
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
