BTSimpleRippleButton
====================

This is a custom button for iOS with Ripple effect. It is simple to integrate & customizable component. Suppors callback using blocks.

<img src="https://raw.githubusercontent.com/balram3429/btSimpleRippleButton/master/btSimpleRippleButton/images/raw/btSimpleRippleButtonTwo.png" alt="btSimpleRippleButton Screenshot" width="208" height="369" /> . <img src="https://raw.githubusercontent.com/balram3429/btSimpleRippleButton/master/btSimpleRippleButton/images/raw/btSimpleRippleButtonThree.png" alt="btSimpleRippleButton Screenshot" width="208" height="369" /> . <img src="https://raw.githubusercontent.com/balram3429/btSimpleRippleButton/master/btSimpleRippleButton/images/raw/btSimpleRippleButtonFour.png" alt="btSimpleRippleButton Screenshot" width="208" height="369" />

## Requirements
* Xcode 5 or higher
* Apple LLVM compiler
* iOS 7.1 or higher
* ARC

## Demo
Build and run the `BTSimpleRippleButton` project in Xcode to see `BTRippleButtton` in action.

## Installation
  1. Drag the file `btRippleButtton.h / btRippleButtton.m ` to your project. Alternatively you can add the folder `btRippleButton` to your project.
  2. Maken an import statement for the file as `#import"BTRippleButtton.h"` .
  3. Add to your project the `QuartzCore framework` make an import statement for it.


## Initialization

### Simple Initialization
To go with a simple initialization, use the below method. Provide an image, frame size, the target method & the sender view.

```objetice-c
BTRippleButtton *rippleButton = [[BTRippleButtton alloc]initWithImage:[UIImage imageNamed:@"pin.png"]
                                                             andFrame:CGRectMake(144, 55, 32, 32)
                                                            andTarget:@selector(buttonTapped:)
                                                                andID:self];
                                                                
[rippleButton setRippeEffectEnabled:YES];
[rippleButton setRippleEffectWithColor:[UIColor colorWithRed:240/255.f green:159/255.f blue:10/255.f alpha:1]];
[self.view addSubview:rippleButton];

```

### Block based call back
For block based initialization to enable call back, use the below simple method.

```objective-c
BTRippleButtton *rippleButtonGreen = [[BTRippleButtton alloc] initWithImage:[UIImage imageNamed:@"author.png"]
                                                                   andFrame:CGRectMake(110, 300, 99, 99)
                                                               onCompletion:^(BOOL success) {
                                                                   
                                                                   // add here more code to block
                                                                   NSLog(@"I am from Block, execution.");
                                                                       
                                                                   }];
    
[rippleButtonGreen setRippeEffectEnabled:YES];
[rippleButtonGreen setRippleEffectWithColor:[UIColor colorWithRed:204/255.f green:270/255.f blue:12/255.f alpha:1]];
[self.view addSubview:rippleButtonGreen];
```

## Contact

- tiwari.balram@gmail.com
- <A HREF = "http://stackoverflow.com/users/1307844/balram-tiwari"> @stackOverflow </a>
- <a href = "https://itunes.apple.com/us/artist/balram-tiwari/id693049567"> @Apps Store </a>

## License

btSimpleRippleButton is available under the MIT license.

Copyright © 2014 Balram Tiwari.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
