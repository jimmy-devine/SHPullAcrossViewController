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
`List`, `of`, `properties`, `or`, `classes`
```objective-c
Code here
```
## Advanced API
```objective-c
Code here
```
## Nomenclature
The image below shows each view's name in case it isn't clear as to what view the documentation references.

* Orange view - Tab view

* Blue view - Content view

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
