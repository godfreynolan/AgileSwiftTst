// MARK: - Mocks generated from file: Calculator/CalculatorModel.swift at 2017-03-22 13:23:28 +0000

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
    
    override var a: Int! {
        get {
            return manager.getter("a", original: observed.map { o in return { () -> Int! in o.a } })
        }
        set {
            manager.setter("a", value: newValue, original: observed != nil ? { self.observed?.a = $0 } : nil)
        }
    }
    
    override var b: Int! {
        get {
            return manager.getter("b", original: observed.map { o in return { () -> Int! in o.b } })
        }
        set {
            manager.setter("b", value: newValue, original: observed != nil ? { self.observed?.b = $0 } : nil)
        }
    }
    
    override func add(_ a: Int, _ b: Int) -> Int {
        return manager.call("add(_: Int, _: Int) -> Int", parameters: (a, b), original: observed.map { o in return { (a: Int, b: Int) -> Int in o.add(a, b) } })
    }
    
    override func sub(_ a: Int, _ b: Int) -> Int {
        return manager.call("sub(_: Int, _: Int) -> Int", parameters: (a, b), original: observed.map { o in return { (a: Int, b: Int) -> Int in o.sub(a, b) } })
    }
    
    override func mul(_ a: Int, _ b: Int) -> Int {
        return manager.call("mul(_: Int, _: Int) -> Int", parameters: (a, b), original: observed.map { o in return { (a: Int, b: Int) -> Int in o.mul(a, b) } })
    }
    
    override func div(_ a: Int, _ b: Int) -> Int {
        return manager.call("div(_: Int, _: Int) -> Int", parameters: (a, b), original: observed.map { o in return { (a: Int, b: Int) -> Int in o.div(a, b) } })
    }
    
    struct __StubbingProxy_CalculatorModel: Cuckoo.StubbingProxy {
        private let manager: Cuckoo.MockManager
        
        init(manager: Cuckoo.MockManager) {
            self.manager = manager
        }
        
        var a: Cuckoo.ToBeStubbedProperty<Int?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "a")
        }
        
        var b: Cuckoo.ToBeStubbedProperty<Int?> {
            return Cuckoo.ToBeStubbedProperty(manager: manager, name: "b")
        }
        
        func add<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("add(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
        
        func sub<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("sub(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
        
        func mul<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return Cuckoo.StubFunction(stub: manager.createStub("mul(_: Int, _: Int) -> Int", parameterMatchers: matchers))
        }
        
        func div<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.StubFunction<(Int, Int), Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
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
        
        var a: Cuckoo.VerifyProperty<Int?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "a", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        var b: Cuckoo.VerifyProperty<Int?> {
            return Cuckoo.VerifyProperty(manager: manager, name: "b", callMatcher: callMatcher, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func add<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return manager.verify("add(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func sub<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return manager.verify("sub(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func mul<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return manager.verify("mul(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
        
        @discardableResult
        func div<M1: Cuckoo.Matchable, M2: Cuckoo.Matchable>(_ a: M1, _ b: M2) -> Cuckoo.__DoNotUse<Int> where M1.MatchedType == Int, M2.MatchedType == Int {
            let matchers: [Cuckoo.ParameterMatcher<(Int, Int)>] = [wrap(matchable: a) { $0.0 }, wrap(matchable: b) { $0.1 }]
            return manager.verify("div(_: Int, _: Int) -> Int", callMatcher: callMatcher, parameterMatchers: matchers, sourceLocation: sourceLocation)
        }
    }
}

class CalculatorModelStub: CalculatorModel {
    
    override var a: Int! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int!).self)
        }
        set {
        }
    }
    
    override var b: Int! {
        get {
            return DefaultValueRegistry.defaultValue(for: (Int!).self)
        }
        set {
        }
    }
    
    override func add(_ a: Int, _ b: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    override func sub(_ a: Int, _ b: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    override func mul(_ a: Int, _ b: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
    
    override func div(_ a: Int, _ b: Int) -> Int {
        return DefaultValueRegistry.defaultValue(for: (Int).self)
    }
}
