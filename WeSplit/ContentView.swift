//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Form {
            Text(helloWorld())
            Text(anotherWorld())
            Text(howdyFriend())
            
            // Item 4
            Text(meepBeep())
            Text(meepBeep())
            Text(meepBeep())
            Text(meepBeep())
            Text(meepBeep())
            Text(meepBeep())
            Text(meepBeep())
            
//            // Item 11 isn't accepted
//            Text(meepBeep())
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
