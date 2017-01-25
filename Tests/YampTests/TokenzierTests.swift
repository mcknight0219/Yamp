import XCTest
import Foundation
@testable import Yamp

class TokenizerTests: XCTestCase {
	func testToken() {
		let a = Token.word("a")
		let b = Token.word("b")
		let c = Token.marker("##")
		
		XCTAssertNotEqual(a, b)
		XCTAssertNotEqual(a, c)
		XCTAssertEqual(Token.newline, Token.newline)
		XCTAssertNotEqual(Token.whitespace(" "), Token.whitespace("  "))
	} 

	func testInitialization() {
		let t1 = Tokenizer("Hello")
		XCTAssertEqual(true, t1.hasNext()) 

		let t2 = Tokenizer("")
		XCTAssertEqual(false, t2.hasNext())
	}

	func testTokenization() {
		assertTokenStream(Tokenizer("  "), [Token.whitespace("  ")])
		assertTokenStream(Tokenizer("## A title"), 
			[
				Token.marker("#"), 
				Token.marker("#"),
				Token.whitespace(" "),
				Token.word("A"),
				Token.whitespace(" "),
				Token.word("title")
			]
		)
		assertTokenStream(Tokenizer("~~em~~"),
			[
				Token.marker("~"),
				Token.marker("~"),
				Token.word("em"),
				Token.marker("~"),
				Token.marker("~"),
			]
		)
		assertTokenStream(Tokenizer("[A Link](http://example.com)"),
			[
				Token.marker("["),
				Token.word("A"),
				Token.whitespace(" "),
				Token.word("Link"),
				Token.marker("]"),
				Token.marker("("),
				Token.word("http://example.com"),
				Token.marker(")")
			]
		)
	}

	private func assertTokenStream(_ tokenizer: Tokenizer, _ tokens: [Token]) {
		var tokens = tokens
		while tokenizer.hasNext() {
			if let t = tokenizer.next() {
				let expected = tokens.remove(at: 0)
				XCTAssertEqual(expected, t)
			} else {
				XCTAssertTrue(false, "Token shoudn't be nil")
			}
		}
	}


	static var allTests: [(String, (TokenizerTests) -> () throws -> Void)] {
		return [
			("testToken", testToken),
			("testInitialization", testInitialization),
			("testTokenization", testTokenization),
		]
	}
}
