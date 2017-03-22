// MARK: - Mocks generated from file: Calculator/CalculatorModel.swift at 2017-03-22 18:04:39 +0000

//
//  CalculatorModel.swift
//  Calculator
//
//  Created by Brian Marshall on 3/20/17.
//  Copyright © 2017 Brian Marshall. All rights reserved.
//

import Cuckoo
@testable import Calculator

import Foundation

class MockCalculatorModel: CalculatorModel, Cuckoo.Mock {
    typealias MocksType = CalculatorModel
    typealias Stubbing = __StubbingProxy_CalculatorModel
    typealias Verification = __VerificationProxy_CalculatorModel
    let manager = Cuckoo.MockManager()
    
    private var observed: CalculatorModel?
    
    func spy(on victim: CalculatorModel) -> Self {
        observed = victim
        return self
    }
    
    override var operandOne: Int! {
        get {
            return manager.getter("operandOne", original: observed.map { o in return { () -> Int! in o.operandOne } })
        }
        set {
            manager.setter("operandOne", value: newValue, original: observed != nil ? { self.observed?.operandOne = $0 } : nil)
        }
    }
    
    override var operandTwo: Int! {
        get {
            return manager.getter("operandTwo", original: observed.map { o in return { () -> Int! in o.operandTwo } })
        }
        set {
            manager.setter("operandTwo", value: newValue, original: observed != nil ? { self.observed?.operandTwo = $0 } : nil)
        }
    }
    
    override func add(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return manager.call("add(_: Int, _: Int) -> Int", parameters: (operandOne, operandTwo), original: observed.map { o in return { (operandOne: Int, operandTwo: Int) -> Int in o.add(operandOne, operandTwo) } })
    }
    
    override func sub(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return manager.call("sub(_: Int, _: Int) -> Int", parameters: (operandOne, operandTwo), original: observed.map { o in return { (operandOne: Int, operandTwo: Int) -> Int in o.sub(operandOne, operandTwo) } })
    }
    
    override func mul(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return manager.call("mul(_: Int, _: Int) -> Int", parameters: (operandOne, operandTwo), original: observed.map { o in return { (operandOne: Int, operandTwo: Int) -> Int in o.mul(operandOne, operandTwo) } })
    }
    
    override func div(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return manager.call("div(_: Int, _: Int) -> Int", parameters: (operandOne, operandTwo), original: observed.map { o in return { (operandOne: Int, operandTwo: Int) -> Int in o.div(operandOne, operandTwo) } })
    }
    
    struct __StubbingProxy_CalculatorModel: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        var operandOne: Cuckoo.ToBeStubbedProperty<Int?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "operandOne")
        }
        
        var operandTwo: Cuckoo.ToBeStubbedProperty<Int?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "operandTwo")
        }
        
        func add<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("add(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
        
        func sub<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("sub(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
        
        func mul<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("mul(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
        
        func div<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("div(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
    }
    
    struct __VerificationProxy_CalculatorModel: Cuckoo.VerificationProxy {
        private let manager: Cuckoo.MockManager
        private let callMatcher: Cuckoo.CallMatcher
        private let sourceLocation: Cuckoo.SourceLocation
        
        init(manager: Cuckoo.MockManager, callMatcher: Cuckoo.CallMatcher, sourceLocation: Cuckoo.SourceLocation) {
            self.manager = manager
            self.callMatcher = callMatcher
            self.sourceLocation = sourceLocation
        }
        
        var operandOne: Cuckoo.VerifyProperty<Int?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "operandOne", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var operandTwo: Cuckoo.VerifyProperty<Int?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "operandTwo", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func add<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return manager.verify("add(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func sub<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return manager.verify("sub(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func mul<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return manager.verify("mul(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func div<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ operandOne: M1, _ operandTwo: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: operandOne) { $0.0 }, wrap(matchable: operandTwo) { $0.1 }]
            return manager.verify("div(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class CalculatorModelStub: CalculatorModel {
    
    override var operandOne: Int! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int!).self)
        }
        set {
        }
    }
    
    override var operandTwo: Int! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int!).self)
        }
        set {
        }
    }
    
    override func add(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    override func sub(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    override func mul(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    override func div(_ operandOne: Int, _ operandTwo: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
}
