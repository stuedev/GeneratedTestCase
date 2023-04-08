//
//  GeneratedTestCase.swift
//  
//
//  Created by Stefan Ueter on 28.03.23.
//

import Foundation
import GeneratedTestCase_ObjC


open
class GeneratedTestCase: GeneratedTestCase_ObjC
{
    @TestBuilder
    open
    class
    func buildTests() -> [Test]
    {
        []
    }
    
    
    public
    static
    override
    func testSelectorStrings()
    -> [String]!
    {
        var tests = buildTests()
        
        let focussedTests = tests.filter { $0.isFocussed }
        
        if focussedTests.count > 0
        {
            let isFocusAllowed = ProcessInfo.processInfo.arguments.contains("NO_FOCUS") == false

            if isFocusAllowed == false
            {
                printFocussedTests(focussedTests)
                
                fatalError("focus not allowed")
            }
            else
            {
                tests = focussedTests
            }
        }

        let selectors =
            tests
                .map
                {
                    let selector = self.addInstanceMethod(name: $0.name,
                                                          block: $0.block)

                    return NSStringFromSelector(selector)
                }

        return selectors
    }

    
    static
    func printFocussedTests
    (
        _ tests: [Test]
    )
    {
        let string =
            """
            ⚠️ Focussed tests:
            
            \(tests.map { $0.name }.joined(separator: "\n"))
            
            """

        Swift.print(string)
    }

    
    static
    func addInstanceMethod
    (
        name: String,
        block: @escaping @convention(block) () -> Void
    )
    -> Selector
    {
        let implementation = imp_implementationWithBlock(block as Any)
        
        let selector = NSSelectorFromString(name)
        
        class_addMethod(self, selector, implementation, "v@:")

        return selector
    }
}
