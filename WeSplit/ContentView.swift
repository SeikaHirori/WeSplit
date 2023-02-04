//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world! Hope you have a lovely day :3\n")
            Text(anotherWorld())
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
