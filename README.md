# SHPullAcrossViewController
SHPullAcrossViewController is a simple, modular view controller that can be added to any view to allow another view to be pulled across the top of it by the user. It is written in Objective-C.

## Installation
Copy the SHPullAcrossViewController folder from this repository in to your project.

**or**

If you use [CocoaPods], simply add
```
pod 'SHPullAcrossViewController'
```
to your Podfile and install with
```sh
$ pod install
```

Then include SHPullAcrossViewController in whatever .h files you need it in using
```objective-c
#include <SHPullAcrossViewController/SHPullAcrossViewController.h>
```
## Requirements
SHPullAcrossViewController requires iOS 7.0 or higher.

## Basic API
Those using this library should interact solely with the `SHPullAcrossViewController`.

#### Initialization
Initializing a `SHPullAcrossViewController`: 
```objective-c
-(instancetype)initWithViewController:(UIViewController*)viewController;
```

#### Positioning
Animating the position of the `SHPullAcrossView` to open or closed using `SHPullAcrossVCPositionClosed` or `SHPullAcrossVCPositionOpen`:
```objective-c
-(void)setPosition:(SHPullAcrossVCPosition)position animated:(BOOL)animated;
```

#### Hiding
Hiding the `SHPullAcrossView` completely (which includes `tabView`):
```objective-c
-(void)setHidden:(BOOL)hidden animated:(BOOL)animated;
```

#### Tab view
Add your own custom view as a subview to the `tabView` by using the property:
```objective-c
@property (nonatomic, readonly) UIView* tabView;
```
**Do NOT change the frame of `tabView`.** Manipulating the position and size of the tabView should be accomplished with the `tabViewYPostition` and `tabViewSize`.

If you do add your own view to the `tabView` but wish to retain the click-to-open functionality without adding your own button, make sure that your view's `userInteractionEnabled` property is set to `NO`.

It is recommended to change the `backgroundColor` property of the `tabView` if your custom subview doesn't completely cover the `tabView`.

## Advanced API
These properties may need to be changed in specialized cases. `SHPullAcrossViewController` can be successfully used without knowledge of the properties in this section

#### `SHPullAcrossView` Offsets
```objective-c
@property (nonatomic) CGFloat closedXOffset;
@property (nonatomic) CGFloat openXOffset;
@property (nonatomic) CGFloat yOffset;
```
`closedXOffset` adjusts the default position of a closed `SHPullAcrossView`. A positive value will begin showing the content view while negative values will cause `tabView` to stick out less.

`openXOffset` adjusts the default position of an open `SHPullAcrossView`. The default zero value fully exposes the passed-in content view controller. A positive value will open further while a negative value will hide part of the content view.

`yOffset` adjusts the y positioning of the `SHPullAcrossView`. A positive value will bring the view down the screen while a negative value will push the view off the top of the screen.

#### Tab view corner radius
```objective-c
@property (nonatomic) CGFloat tabViewCornerRadius;
```
`tabViewCornerRadius` allows the left two corners of the `tabView` to be rounded. `tabViewCornerRadius` should not be larger than half the height of `tabView` or the width of `tabView`.

#### Content View
```objective-c
@property (nonatomic, strong) UIColor* contentViewBackgroundColor;
```

The `contentViewBackgroundColor` is the color of the view that the passed-in content view controller's view sits on top of. Changing this value is only necessary if the passed-in view has transparancy.

#### Superview Mask
The superview mask is a view that goes over the superview of the `SHPullAcrossView`. It darkens as the `SHPullAcrossView` is moved closer to open effectively fading out the content behind it. The superview mask also disallows touches to the superview and retracts the `SHPullAcrossView` when it is tapped.
```objective-c
@property (nonatomic) BOOL showSuperviewMaskWhenOpen;
@property (nonatomic, copy) UIColor* superviewMaskColor;
@property (nonatomic) CGFloat superviewMaskMaxAlpha;
```
`showSuperviewMaskWhenOpen` will show or hide the superview mask.

`superviewMaskColor` is the color to which the superview mask will fade.

`superviewMaskMaxAlpha` is how transparent the superview mask will be when the `SHPullAcrossView` is fully open. 0 is clear, 1 is completely opaque.

#### Shadows
All four of the following properties modify the shadow that runs along the border of the `tabView` and content view. They give the `SHPullAcrossView` depth and the illusion that the `SHPullAcrossView` is sitting above its superview.
```objective-c
@property (nonatomic) CGFloat shadowOpacity;
@property (nonatomic) CGColorRef shadowColor;
@property (nonatomic) CGFloat shadowRadius;
@property (nonatomic) CGSize shadowOffset;
```
These properties are the same found on the layer property of `UIView` and function identically. Setting `shadowOpacity` to zero will eliminate any shadows.

## Nomenclature
The image below shows each view's name in case it isn't clear as to what view the documentation references.

* Orange view - Tab view

* Blue view - Content view, this view holds the view controller passed in by the user.

* Black outline - SHPullAcrossView, this view holds both the tab view and content view.

![Image](https://raw.github.com/CarvineJimmy/SHPullAcrossViewController/master/NomenclatureExample.PNG)

## Special Thanks

A special thank you John Llurch Zorrilla and those mantaining his [SWRevealViewController] project. SHPullAcrossViewController set out to mimic SWRevealViewController but instead pull a view on to the screen rather than pulling one off the screen. This project takes cues from and elaborates on some of SWRevealViewController's design.

## License
Copyright (c) 2014-2015 Carvine Software contactus AT carvinesoftware DOT com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[CocoaPods]:https://cocoapods.org
[SWRevealViewController]:https://github.com/John-Lluch/SWRevealViewController
