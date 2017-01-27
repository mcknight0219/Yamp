 //
 // Block.swift 
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
 ///

import Foundation

/// Blocks are separated by new lines.
public struct Block {
	/// type of block
	let kind: Kind
	/// all inline 
	var inlines: [Inline]
	/// configuration for attributed string
	let config: StyleConfig
	/// AttributedString applied by styles
	var attributedString: NSAttributedString {
		get {
			let m = NSMutableAttributedString()
			self.inlines.forEach {inline in
				m.append(inline.attributedString(self.config))
			}
			return m
		}
	}
	/// range of block in text
	var range: Range<String.Index>

	init(kind: Block.Kind, inlines: [Inline], config: StyleConfig) {
		self.kind = kind
		self.inlines = inlines	
		self.config = config
	}

	/// Different types of block have different visual representation.
	enum Kind {
		case quote
		case list
		case paragraph
	}
}
