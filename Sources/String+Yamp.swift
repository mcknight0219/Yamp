 // 
 // String+Yamp.swift
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

extension String {
    /// The length of string
	var length: Int {
		get {
			return self.characters.count
		}
	}

	/// If string is whitespaces or tabs
	func isWs() -> Bool {
        guard !self.isEmpty else { return false }
		for c in self.characters {
			if c != " " && c != "\t" {
				return false
			}
		}
		return true
	}
    
    /// Get substring with from and to parameter
    ///
    /// - Parameters:
    ///     = from: start index
    ///     = to:   end index
    func substring(from: String.Index, to: String.Index) -> String? {
        guard distance(from: from, to: to) <= length else {
            return nil
        }
        
        guard from <= self.endIndex && to >= self.startIndex else {
            return nil
        }
        
        if from == to && to == self.endIndex {
            return nil
        }
        
        return self.substring(with: Range<String.Index>(uncheckedBounds: (from, to)))
    }
}
