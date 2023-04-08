//
//  Test.swift
//  
//
//  Created by Stefan Ueter on 29.03.23.
//

import Foundation


extension GeneratedTestCase
{
    public
    struct Test
    {
        public
        var name: String

        public
        let block: @convention(block) () -> Void

        public
        var isFocussed: Bool

        
        
        public
        init
        (
            name: String,
            block: @escaping @convention(block) () -> Void,
            isFocussed: Bool
        )
        {
            self.name = name
            self.block = block
            self.isFocussed = isFocussed
        }
    }
}
