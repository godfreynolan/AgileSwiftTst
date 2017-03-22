//
//  CalculatorTests.swift
//  CalculatorTests
//
//  Created by Brian Marshall on 3/20/17.
//  Copyright © 2017 Brian Marshall. All rights reserved.
//

import XCTest
import Nimble
import Cuckoo

@testable import Calculator

class CalculatorTests: XCTestCase {
    
    let resCalc = CalculatorModel()
    
    func testAdd() {
        expect(self.resCalc.add(1,1)) == 2
    }
    
    func testAddRange(){
        expect(self.resCalc.mul(4, 3)).to(satisfyAnyOf(beGreaterThan(10), beLessThan(20)))
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
//    func testMockNumbers(){
//        let mock = MockCalculatorModel().spy(on: CalculatorModel())
//        mock.a = 5
//        mock.b = 5
//        
//        XCTAssertEqual(mock.add(mock.a, mock.b), 10)
//    }
}
