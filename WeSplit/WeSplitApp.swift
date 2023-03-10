//
//  WeSplitApp.swift
//  WeSplit
//
//  Created by Seika Hirori on 2/4/23.
//

import SwiftUI

@main
struct WeSplitApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

func helloWorld() -> String {
    let output:String = "Hello world! It's a good day :3"
    
    return output
}

func anotherWorld() -> String {
    let output:String = "This message is brought to you from another world! It's a lovely day over here :D"
    
    return output
}

func howdyFriend() -> String {
    let output:String = "Howdy everyone :333"
    
    return output
}

func meepBeep() -> String {
    let output:String = "meep beep :O"
    
    return output
}

func directlyAddOne(input:String) -> String {
    var result:String
    
    result = input
    result += "!"
    
    return result
}
