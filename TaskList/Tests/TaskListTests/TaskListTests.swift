import XCTest
@testable import TaskList

final class TaskListTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(TaskList().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
