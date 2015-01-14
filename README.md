SwiftyColor
===========

[![Build Status](https://travis-ci.org/devxoul/SwiftyColor.svg)](https://travis-ci.org/devxoul/SwiftyColor)
[![CocoaPods](http://img.shields.io/cocoapods/v/SwiftyColor.svg?style=flat)](http://cocoapods.org/?q=name%3ASwiftyColor%20author%3Adevxoul)

The most sexy way to use colors in Swift. Both compatible with iOS and OS X.

Hex Operator
------------

Use postfix operator `~`.

```swift
let color = 0xabcdef~
```

Alpha Operator
--------------

Use infix operator `~`.

```swift
let transparent = 0x123456 ~ 50%
let red = UIColor.redColor() ~ 10%
let float = UIColor.blueColor() ~ 0.5 // 50%
```


License
-------

SwiftyColor is under MIT license. See LICENSE file for more information.
