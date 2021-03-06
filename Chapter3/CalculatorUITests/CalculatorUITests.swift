//
//  CalculatorUITests.swift
//  CalculatorUITests
//
//  Created by Brian Marshall on 3/20/17.
//  Copyright © 2017 Brian Marshall. All rights reserved.
//

import XCTest

class CalculatorUITests: XCTestCase {

    override func setUp() {
        super.setUp()

        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        XCUIApplication().launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testExample() {
        let app = XCUIApplication()
        app.buttons["5"].tap()
        app.buttons["*"].tap()
        app.buttons["3"].tap()
        app.buttons["="].tap()
        XCTAssertTrue(XCUIApplication().otherElements.containing(.button, identifier:"7").children(matching: .textField).element.value as! String == "15")
    }
}
