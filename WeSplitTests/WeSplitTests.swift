//
//  WeSplitTests.swift
//  WeSplitTests
//
//  Created by Seika Hirori on 2/4/23.
//

import XCTest
@testable import WeSplit

final class WeSplitTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
//        try super.setUpWithError()
        
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
//        try super.tearDownWithError()
    }

    func testHellowWorld() {
        let output = helloWorld()
        
        XCTAssertEqual(output, "Hello world! It's a good day :3")
    }
    
    func testDirectlyAddOne() {
        var output:String = directlyAddOne(input: "")
        let expect1:String = "!"
        XCTAssertEqual(output, expect1)
        
        output = directlyAddOne(input: "Hello")
        let expect2:String = "Hello!"
        XCTAssertEqual(output, expect2)
        
        
    }
    
    
//    func testExample() throws {
//        // This is an example of a functional test case.
//        // Use XCTAssert and related functions to verify your tests produce the correct results.
//        // Any test you write for XCTest can be annotated as throws and async.
//        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
//        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
//    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
