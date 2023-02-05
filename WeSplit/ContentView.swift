//
//  ContentView.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            Form {
                Section {
                Text(helloWorld())
                Text(anotherWorld())
                Text(howdyFriend())
                }
            }
            .navigationTitle("SwiftUI") // Officially adds navigation bar, so scrolling doesn't collude with upper status bar
            .navigationBarTitleDisplayMode(.inline) // This makes font smaller for "SwiftUI"
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
