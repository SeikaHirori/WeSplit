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
            ForEach(0..<100) {
                Text("Row with shorthand syntax: \($0)")
            }
        }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
