import XCTest
import Foundation
@testable import Yamp

class UtilsTests: XCTestCase {
	func testStringLength() {
		XCTAssertEqual(5, "Hello".length)
		XCTAssertEqual(0, "".length)
	}

	static var allTests : [(String, (UtilsTests) -> () throws -> Void)] {
		return [
			("testStringLength", testStringLength),
		]
	}
}
