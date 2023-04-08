//
//  Example_Tests.swift
//  
//
//  Created by Stefan Ueter on 05.04.23.
//

import Foundation
import GeneratedTestCase
import XCTest


class ExampleTestCase: GeneratedTestCase
{
    @TestBuilder
    public
    static
    override
    func buildTests() -> [Test]
    {
        // single test
        
        createTest(for: 1)
        
        
        // array of tests
        
        createTests(for: [2,3,4])
        
        
        // for loop
        
        for number in [5,6,7]
        {
            createTest(for: number)
        }
        
        
        // if/else
        
        if true
        {
            createTest(for: 8)
        }
        else
        {
            createTest(for: 99)
        }
        
        
        // optional
        
        if true
        {
            createTest(for: 9)
        }

        if false
        {
            createTest(for: 99)
        }
        
        
        // declarations
        
        let number = 10
        
        createTest(for: number)
    }
}


func createTests
(
    for numbers: [Int]
)
-> [GeneratedTestCase.Test]
{
    numbers.map(createTest)
}


func createTest
(
    for number: Int
)
-> GeneratedTestCase.Test
{
    let block =
    {
        XCTAssertEqual(number, number)      // always succeeds
    }
    
    return
        .init(
            name: "test_number_\(number)",
            block: block,
            isFocussed: false
        )
}
