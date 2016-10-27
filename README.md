# NKAlertView

Concise AlertView library written in swift.


## Installation

#### Cocoapods
comming soon....

#### Carthage
comming soon....

#### Manually

Download and drop `/NKAlertView` folder in your project.


## How to use
```swift
let alert = NKAlertView(title: "title",description: "This is a more descriptive info text.",image: UIImage(named: "image.png"),style: .dark)

alertVC.addAction(NKAlertAction(title: "Cancel", style: .cancel, action: { () -> Void in
  print("Cancel")
}))

alertVC.addAction(NKAlertAction(title: "OK", style: .default, action: { () in
  print("OK")
}))

self.present(alert, animated: true, completion: nil)
```

## Contributing

welcome the feature request or bug report feedback.


## License

NKAlertView is available under the MIT license. See the LICENSE file for more info.
