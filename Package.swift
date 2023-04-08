// swift-tools-version: 5.6
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription


let package = Package(
    
    name: "GeneratedTestCase",
    
    products:
        [
            .library(
                name: "GeneratedTestCase",
                targets:
                    [
                        "GeneratedTestCase"
                    ]
            ),
        ],
    
    dependencies:
        [
        ],
    
    targets:
        [
            .target(
                name: "GeneratedTestCase",
                dependencies:
                    [
                        "GeneratedTestCase_ObjC"
                    ]
            ),

            .target(
                name: "GeneratedTestCase_ObjC",
                dependencies:
                    [
                    ]
            ),
            
            .testTarget(
                name: "GeneratedTestCaseTests",
                dependencies:
                    [
                        "GeneratedTestCase"
                    ]
            )
        ]
)
