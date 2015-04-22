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
@property (nonatomic, weak) IBOutlet UISwitch* showSuperviewMaskSwitch;
@property (nonatomic, weak) IBOutlet UISlider* superviewMaskMaxAlphaSlider;

@property (nonatomic, strong) SHPullAcrossViewController* pullAcrossViewController;

-(IBAction)tabYPositionSliderValueChanged:(UISlider *)sender;
-(IBAction)showSuperviewMaskSwitchValueChanged:(UISwitch*)sender;
-(IBAction)superviewMaskMaxAlphaSliderValueChanged:(UISlider *)sender;
-(IBAction)closedXOffsetSliderValueChanged:(UISlider *)sender;

@end

