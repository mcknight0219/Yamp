import XCTest
import Foundation
@testable import Yamp

class UtilsTests: XCTestCase {
	func testStringLength() {
		XCTAssertEqual(5, "Hello".length)
		XCTAssertEqual(0, "".length)
	}
    
    func testStringIsWs() {
        XCTAssertTrue(" ".isWs())
        XCTAssertTrue("   ".isWs())
        XCTAssertTrue("\t".isWs())
        
        XCTAssertFalse("".isWs())
        XCTAssertFalse(" a ".isWs())
    }
    
    func testStringSubstring() {
        let s = "Hello"
        XCTAssertEqual(s, s.substring(from: s.startIndex, to: s.endIndex))
        XCTAssertEqual("", s.substring(from: s.startIndex, to: s.startIndex))
        XCTAssertNil(s.substring(from: s.endIndex, to: s.endIndex))
    }

	static var allTests : [(String, (UtilsTests) -> () throws -> Void)] {
		return [
			("testStringLength", testStringLength),
			("testStringIsWs", testStringIsWs),
			("testStringSubstring", testStringSubstring),
		]
	}
}
