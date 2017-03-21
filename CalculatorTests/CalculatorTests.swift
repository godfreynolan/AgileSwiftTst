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
    
    var mockDateAndTime:MockDateAndTime?
    
    class MockDateAndTime
    {
        func from(_ year:Int, month:Int, day:Int) -> Date
        {
            var c = DateComponents()
            c.year = year
            c.month = month
            c.day = day
            
            let gregorian = Calendar(identifier:Calendar.Identifier.gregorian)
            let date = gregorian.date(from: c as DateComponents)
            
            return (date! as NSDate) as Date
        }
    }
    
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
}
