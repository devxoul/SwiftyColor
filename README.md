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

Percent Operator
----------------

```swift
let view = UIView()
view.alpha = 30% // 0.3
```


Short Color Name Alias
----------------------

With SwiftyColor, you can use short alias for default color names.

| Color Name | Short | Even(?) Shorter |
|---|---|---|
| `UIColor.blackColor` | `UIColor.black` | `Color.black` |
| `UIColor.darkGrayColor` | `UIColor.darkGray` | `Color.darkGray` |
| `UIColor.lightGrayColor` | `UIColor.lightGray` | `Color.lightGray` |
| `UIColor.whiteColor` | `UIColor.white` | `Color.white` |
| `UIColor.grayColor` | `UIColor.gray` | `Color.gray` |
| `UIColor.redColor` | `UIColor.red` | `Color.red` |
| `UIColor.greenColor` | `UIColor.green` | `Color.green` |
| `UIColor.blueColor` | `UIColor.blue` | `Color.blue` |
| `UIColor.cyanColor` | `UIColor.cyan` | `Color.cyan` |
| `UIColor.yellowColor` | `UIColor.yellow` | `Color.yellow` |
| `UIColor.magentaColor` | `UIColor.magenta` | `Color.magenta` |
| `UIColor.orangeColor` | `UIColor.orange` | `Color.orange` |
| `UIColor.purpleColor` | `UIColor.purple` | `Color.purple` |
| `UIColor.brownColor` | `UIColor.brown` | `Color.brown` |
| `UIColor.clearColor` | `UIColor.clear` | `Color.clear` |


License
-------

SwiftyColor is under MIT license. See LICENSE file for more information.
