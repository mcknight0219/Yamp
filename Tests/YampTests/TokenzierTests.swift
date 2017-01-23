import XCTest
import Foundation
@testable import Yamp

class TokenizerTests: XCTestCase {
	
	func testInitialization() {
		let t1 = Tokenizer("Hello")
		XCTAssertEqual(true, t1.hasNext()) 

		let t2 = Tokenizer("")
		XCTAssertEqual(false, t2.hasNext())
	}


	static var allTests: [(String, (TokenizerTests) -> () throws -> Void)] {
		return [
			("testInitialization", testInitialization),
		]
	}
}
