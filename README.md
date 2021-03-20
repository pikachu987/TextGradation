# TextGradation

[![CI Status](https://img.shields.io/travis/pikachu987/TextGradation.svg?style=flat)](https://travis-ci.org/pikachu987/TextGradation)
[![Version](https://img.shields.io/cocoapods/v/TextGradation.svg?style=flat)](http://cocoapods.org/pods/Tags)
[![License](https://img.shields.io/cocoapods/l/TextGradation.svg?style=flat)](http://cocoapods.org/pods/Tags)
[![Platform](https://img.shields.io/cocoapods/p/TextGradation.svg?style=flat)](http://cocoapods.org/pods/Tags)
![](https://img.shields.io/badge/Supported-iOS9%20%7C%20OSX%2010.9-4BC51D.svg?style=flat-square)
![](https://img.shields.io/badge/Swift-5.0-orange.svg?style=flat)

## Introduce

You can add a gradient to the text of a UILabel or UIButton.

<img src='./Image/1.gif' width='200px'>

## Requirements

`TextGradation` written in Swift 5.0. Compatible with iOS 9.0+

## Installation

TextGradation is available through [CocoaPods](https://cocoapods.org). To install
it, simply add the following line to your Podfile:

```ruby
pod 'TextGradation'
```

### Xib or Storyboard file

GradationLabel

![image](./Image/3.png)

![image](./Image/4.png)

GradationButton

![image](./Image/5.png)

![image](./Image/6.png)



<br><br><br>

### Code Editor

```swift
import TextGradation
```

```swift

gradationLabel.gradation(
    .horizontal, 
    colors: [UIColor.gray, UIColor.red, UIColor.blue, UIColor.black]
)

gradationButton.gradation(
    .horizontal, 
    colors: [UIColor.gray, UIColor.red, UIColor.blue, UIColor.black]
)

```

progress

```swift

gradationProgressHorizontalLabel.gradation(
    .horizontal, 
    startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), 
    endColor: .black, 
    progress: CGFloat(sender.value)
)

gradationProgressVerticalLabel.gradation(
    .vertical, 
    startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), 
    endColor: .black, 
    progress: CGFloat(sender.value)
)

gradationProgressHorizontalButton.gradation(
    .horizontal, 
    startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), 
    endColor: .black, 
    progress: CGFloat(sender.value)
)

gradationProgressVerticalButton.gradation(
    .vertical, 
    startColor: UIColor(red: 106/255, green: 183/255, blue: 216/255, alpha: 1), 
    endColor: .black, 
    progress: CGFloat(sender.value)
)

```


## Author

pikachu987, pikachu77769@gmail.com

## License

TextGradation is available under the MIT license. See the LICENSE file for more info.
