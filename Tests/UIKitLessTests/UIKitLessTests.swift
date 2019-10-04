import XCTest
@testable import UIKitLess

final class UIKitLessTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(UIKitLess().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
