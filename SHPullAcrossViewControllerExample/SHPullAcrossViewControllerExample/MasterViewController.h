//
//  ViewController.h
//  SHPullAcrossViewControllerExample
//
//  Created by Bob Carson on 1/18/15.
//  Copyright (c) 2015 Skyhouse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHPullAcrossViewController.h"

@interface MasterViewController : UIViewController<SHPullAcrossViewControllerDelegate>

@property (nonatomic, weak) IBOutlet UISlider* tabYPositionSlider;

@property (nonatomic, strong) SHPullAcrossViewController* pullAcrossViewController;

-(IBAction)tabYPositionSliderValueChanged:(UISlider*)sender;
-(IBAction)showSuperviewMaskSwitchValueChanged:(UISwitch*)sender;
-(IBAction)superviewMaskMaxAlphaSliderValueChanged:(UISlider*)sender;
-(IBAction)closedXOffsetSliderValueChanged:(UISlider*)sender;
-(IBAction)openXOffsetSliderValueChanged:(UISlider*)sender;
-(IBAction)yOffsetSliderValueChanged:(UISlider*)sender;
-(IBAction)tabViewCornerRadiusSliderValueChanged:(UISlider*)sender;
-(IBAction)hiddenSwitchValueChanged:(UISwitch*)sender;

@end

