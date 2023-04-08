![Swift](https://github.com/stuedev/GeneratedTestCase/actions/workflows/swift.yml/badge.svg)

# GeneratedTestCase

This library provides a *base class* **GeneratedTestCase** for automated tests.

Instead of defining each test inside a *Test Case* by writing a *Function*, tests are generated from a `GeneratedTestCase.Test` object. These objects are declared inside the `buildTests()` static function.

```swift
class ExampleTestCase: GeneratedTestCase
{
    @TestBuilder
    public static override
    func buildTests() -> [Test]
    {
        // single generated test
        
        createTest(for: 1)
        
        
        // array of generated tests
        
        createTests(for: [2,3,4])
    }

    static
    func createTest
    (
        for number: Int
    )
    -> Test
    {
        let testBlock =
        {
            XCTAssertEqual(number, number)
        }

        /*
         A `Test` object consists of a `name`, which translates into the name of the generated test function,
         and a block constaining the test code.
         
         Additionally, tests can be *focussed*. If at least one test is focussed, only focussed tests will be run.
        */

        return
            .init(
                name: "test_number_\(number)",
                block: testBlock,
                isFocussed: false
            )
    }
    
    static
    func createTests
    (
        for numbers: [Int]
    )
    -> [Test]
    {
        numbers.map(createTest)
    }
}
```
