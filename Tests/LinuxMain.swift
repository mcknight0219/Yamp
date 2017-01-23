import XCTest
@testable import YampTests

XCTMain([
     testCase(YampTests.allTests),
	 testCase(UtilsTests.allTests),
	 testCase(TokenizerTests.allTests),
])
