# LaucherView

[![CI Status](http://img.shields.io/travis/pdn1905/LaucherView.svg?style=flat)](https://travis-ci.org/pdn1905/LaucherView)
[![Version](https://img.shields.io/cocoapods/v/LaucherView.svg?style=flat)](http://cocoapods.org/pods/LaucherView)
[![License](https://img.shields.io/cocoapods/l/LaucherView.svg?style=flat)](http://cocoapods.org/pods/LaucherView)
[![Platform](https://img.shields.io/cocoapods/p/LaucherView.svg?style=flat)](http://cocoapods.org/pods/LaucherView)

## Example

To run the example project, clone the repo, and run `pod install` from the Example directory first.

## Requirements

## Installation

LaucherView is available through [CocoaPods](http://cocoapods.org). To install
it, simply add the following line to your Podfile:

![Alt Text](https://media.giphy.com/media/kfnC9rzczSoqk/giphy.gif)

```ruby
pod 'LaucherView'
```

Easy to use:

```ruby
Class MyView: LaucherView {
  //some code at here... 
}

var myView = MyView()
```

Show left view:
```ruby
myView.showSlide(width: 300) 
```

Show bottom view:
```ruby
myView.showBottom(height: 300) 
```

Custom duration:
```ruby
myView.duration = 1.0
```

Hide view:
```ruby
myView.hide()
```

## Author

PhanNgoc😈, ngoc.phan@smartdev.vn

## License

LaucherView is available under the MIT license. See the LICENSE file for more info.
