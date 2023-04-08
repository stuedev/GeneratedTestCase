//
//  TestBuilder.swift
//  
//
//  Created by Stefan Ueter on 29.03.23.
//

import Foundation


extension GeneratedTestCase
{
    @resultBuilder
    public
    struct TestBuilder
    {
        // MARK: partial block

        public
        static
        func buildPartialBlock
        (
            first: [Test]
        )
        -> [Test]
        {
            first
        }
        
        
        public
        static
        func buildPartialBlock
        (
            accumulated: [Test],
            next: [Test]
        )
        -> [Test]
        {
            accumulated + next
        }
        

        
        // MARK: expression
        
        public
        static
        func buildExpression
        (
            _ void: Void
        )
        -> [Test]
        {
            []
        }


        public
        static
        func buildExpression
        (
            _ test: Test
        )
        -> Test
        {
            test
        }

        
        public
        static
        func buildExpression
        (
            _ test: Test
        )
        -> [Test]
        {
            [test]
        }

        
        public
        static
        func buildExpression
        (
            _ tests: [Test]
        )
        -> [Test]
        {
            tests
        }

        
        
        // MARK: either
        
        public
        static
        func buildEither
        (
            first tests: [Test]
        )
        -> [Test]
        {
            tests
        }
        
        
        public
        static
        func buildEither
        (
            second tests: [Test]
        )
        -> [Test]
        {
            tests
        }
        
        
        
        // MARK: optional
        
        public
        static
        func buildOptional
        (
            _ tests: [Test]?
        )
        -> [Test]
        {
            tests.flatMap
            {
                $0
            }
            ?? []
        }
        
        
        
        // MARK: array
        
        public
        static
        func buildArray
        (
            _ testArray: [[Test]]
        )
        -> [Test]
        {
            testArray.flatMap { $0 }
        }
    }
}
