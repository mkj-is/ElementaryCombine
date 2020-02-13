import XCTest
import Combine
import ElementaryCombine

final class ObservableStoreTests: XCTestCase {

    private var cancellable: AnyCancellable?

    override func tearDown() {
        super.tearDown()
        cancellable = nil
    }

    func testWillChange() {
        let store = counterStore()
        let expectation = self.expectation(description: "Will change after dispatching action.")
        cancellable = store.objectWillChange.sink {
            expectation.fulfill()
        }
        store.dispatch(.increment)
        wait(for: [expectation], timeout: 1)
    }

    static var allTests = [
        ("testWillChange", testWillChange),
    ]
}
