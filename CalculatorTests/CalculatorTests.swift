//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Brian Marshall on 3/20/17.
//  Copyright © 2017 Brian Marshall. All rights reserved.
//

import XCTest
@testable import Calculator

class CalculatorTests: XCTestCase {
    
    var resCalc: CalculatorModel!
    
    override func setUp() {
        super.setUp()
        resCalc = CalculatorModel()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testAdd() {
        XCTAssertEqual(resCalc.add(1, 1), 2)
        XCTAssertEqual(resCalc.add(1, 2), 3)
        XCTAssertEqual(resCalc.add(5, 4), 9)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
