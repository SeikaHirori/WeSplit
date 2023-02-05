//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var tapCount = 0
    
    var body: some View {
            Section {
                Button("Tap Count: \(tapCount)") {
                    tapCount += 1
                }
            }
            
            Section {
                Button("Reset") {
                    tapCount = 0
                }
            }
                    
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
