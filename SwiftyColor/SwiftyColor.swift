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
    typealias Color = UIColor
#elseif os(OSX)
    import AppKit
    typealias Color = NSColor
#endif

/// e.g. `0x123456~`
postfix operator ~ {}
postfix func ~(hex: Int) -> Color {
    return hex ~ 1
}

/// e.g. `50%`
postfix operator % {}
postfix func %(percent: Int) -> Float {
    return Float(percent)%
}
postfix func %(percent: CGFloat) -> Float {
    return Float(percent)%
}
postfix func %(percent: Float) -> Float {
    return percent / 100
}

/// e.g. `0x123456 ~ 50%`
infix operator ~ { associativity left precedence 200 }
func ~(hex: Int, alpha: Int) -> Color {
    return hex ~ CGFloat(alpha)
}
func ~(hex: Int, alpha: Float) -> Color {
    return hex ~ CGFloat(alpha)
}
func ~(hex: Int, alpha: CGFloat) -> Color {
    let red = CGFloat(hex >> 16 & 0xff) / 255
    let green = CGFloat(hex >> 8 & 0xff) / 255
    let blue  = CGFloat(hex & 0xff) / 255
    return Color(red: red, green: green, blue: blue, alpha: alpha)
}
func ~(color: Color, alpha: Int) -> Color {
    return color ~ CGFloat(alpha)
}
func ~(color: Color, alpha: Float) -> Color {
    return color ~ CGFloat(alpha)
}
func ~(color: Color, alpha: CGFloat) -> Color {
    return color.colorWithAlphaComponent(alpha)
}
