//
//  WeSplitUITests.swift
//  WeSplitUITests
//
//  Created by Seika Hirori on 2/4/23.
//

import XCTest

final class WeSplitUITests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // UI tests must launch the application that they test.
        let app:XCUIApplication = XCUIApplication()
        app.launch()
        
    
        let amountTF = app.textFields["Amount"]
        XCTAssert(amountTF.exists)
        
        amountTF.tap()
        
        amountTF.keyboards.buttons["Delete"].tap(withNumberOfTaps: 4, numberOfTouches: 1)
        amountTF.keys["2"].tap()
        amountTF.keys["0"].tap()
//        let v1GrandTotalWith20percentTip = app.staticTexts["$24.00"].label
//        XCTAssertEqual(v1GrandTotalWith20percentTip, "$24.00")
        
        
        XCTAssertEqual(amountTF.value as! Double, 20.00)
//
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 7.0, *) {
            // This measures how long it takes to launch your application.
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
