# NKAlertView

[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)

Easily customizable AlertView library available.It is written in swift.

<p align="center">
  <img src="Screenshots/pre_screenshot1.png" width=250 alt="Icon"/>
  <img src="Screenshots/pre_screenshot2.png" width=250 alt="Icon"/>
</p>


## Installation

#### Cocoapods
comming soon....

#### Carthage

Just add to your Cartfile:
```
github "nukesk3/NKAlertView"
```

#### Manually

Download and drop `/NKAlertView` folder in your project.


## How to use
```swift
let alert = NKAlertView(title: "title",description: "This is a more descriptive info text.",image: UIImage(named: "image.png"),style: .dark)

alert.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
  print("Cancel")
}))

alert.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
  print("OK")
}))

self.present(alert, animated: true, completion: nil)
```

## Contributing

welcome the feature request or bug report feedback.


## License

NKAlertView is available under the MIT license. See the LICENSE file for more info.
