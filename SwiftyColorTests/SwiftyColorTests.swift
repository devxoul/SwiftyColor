//
// SwiftyColor
//
// The MIT License (MIT)
//
// Copyright (c) 2015 Suyeol Jeon (xoul.kr)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in all
// copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
// SOFTWARE.

#if os(iOS)
    import UIKit
#elseif os(OSX)
    import AppKit
#endif

import XCTest

class SwiftyColorTests: XCTestCase {
    
    func testHex() {
        let color = 0x123456~
        var (red, green, blue) = (CGFloat(), CGFloat(), CGFloat())
        color.getRed(&red, green: &green, blue: &blue, alpha: nil)
        XCTAssert(Int(red * 255) == 0x12)
        XCTAssert(Int(green * 255) == 0x34)
        XCTAssert(Int(blue * 255) == 0x56)
    }

    func testAlpha() {
        XCTAssertEqual(0x123456 ~ 50%, 0x123456~.colorWithAlphaComponent(0.5))
    }
    
    func testPercent() {
        XCTAssert(50% == 0.5)
        XCTAssert(12% == 0.12)
    }
    
}
