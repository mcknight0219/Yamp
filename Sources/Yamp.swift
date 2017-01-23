 //  
 // Yamp.swift
 //
 // Copyright (c) 2017 Qiang, Guo <mcknight0219@gmail.com>
 // Author: Qiang, Guo <mcknight0219@gmail.com>
 //
 // Permission is hereby granted, free of charge, to any person obtaining a copy of
 // this software and associated documentation files (the "Software"), to deal in
 // the Software without restriction, including without limitation the rights to
 // use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
 // the Software, and to permit persons to whom the Software is furnished to do so,
 // subject to the following conditions:
 //
 // The above copyright notice and this permission notice shall be included in all
 // copies or substantial portions of the Software.
 //
 // THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 // IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
 // FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
 // COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
 // IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
 // CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
 //

import Foundation

#if os(Linux)
import Dispatch
#endif

/// Yamp is a markdown parser and decorator for ios. You can use it to
/// turn a markdown string to an nsattributedstring. It's customizable
/// and allows you to extend the parser to satisfy your needs.
public struct Yamp {

	public func process(_ string: String) -> NSAttributedString {
		guard string.length > 0 else {
			return NSAttributedString(string: "")
		}

		return NSAttributedString(string: string)
	}
}


