# IconLabelView
A UILabel embedded with small icon image.

![](https://raw.githubusercontent.com/kindraywind/IconLabelView/master/Image/screenshot.png)

### Usage
You can use the `IconLabelView` two ways,

#### Interface Builder

Just add a `UIView` into your .storyboard then set the custom class to `IconLabelView`

#### Programmatically

``` swift
let iconLabelView = IconLabelView(frame: CGRect(x: 20, y: 100, width: 300, height: 35))
iconLabelView.text = "justARandomString"
iconLabelView.textColor = UIColor.orangeColor()
iconLabelView.iconImage = UIImage(named: "randomImage")!

self.view.addSubview(iconLabelView)
```
