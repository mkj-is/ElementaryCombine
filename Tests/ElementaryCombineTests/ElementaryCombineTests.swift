import XCTest
@testable import ElementaryCombine

final class ElementaryCombineTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(ElementaryCombine().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
