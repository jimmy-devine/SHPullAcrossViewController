//
//  ViewController.m
//  SHPullAcrossViewControllerExample
//
//  Created by Bob Carson on 1/18/15.
//  Copyright (c) 2015 Skyhouse. All rights reserved.
//

#import "MasterViewController.h"
#import "SHPullAcrossViewController.h"

@interface MasterViewController ()

@end

@implementation MasterViewController

-(void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    self.tabYPositionSlider.maximumValue = self.view.frame.size.height - 60;
    self.tabYPositionSlider.value = 70;
    
    //This is the view controller that will be pulled out using SHPullAcrossViewController
    UIViewController* contentViewController = [[UIViewController alloc] init];
    contentViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width - 50, [UIScreen mainScreen].bounds.size.height);
    contentViewController.view.backgroundColor = [UIColor blueColor];
    
    UILabel* contentViewLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, contentViewController.view.frame.size.height / 2 - 50, contentViewController.view.frame.size.width, 100)];
    contentViewLabel.text = @"This is the content view controller!";
    contentViewLabel.numberOfLines = 2;
    contentViewLabel.textAlignment = NSTextAlignmentCenter;
    contentViewLabel.textColor = [UIColor whiteColor];
    contentViewLabel.font = [UIFont fontWithName:@"AvenirNext-Regular" size:15];
    [contentViewController.view addSubview:contentViewLabel];
    
    self.pullAcrossViewController = [[SHPullAcrossViewController alloc] initWithViewController:contentViewController];
    self.pullAcrossViewController.delegate = self;
    self.pullAcrossViewController.tabView.backgroundColor = [UIColor blueColor];
    
    [self addChildViewController:self.pullAcrossViewController];
    [self.view addSubview:self.pullAcrossViewController.view];
}

-(void)pullAcrossViewController:(SHPullAcrossViewController*)controller didChangePosition:(SHPullAcrossVCPosition)position hidden:(BOOL)hidden
{
    if(position == SHPullAcrossVCPositionOpen)
    {
        NSLog(@"It's Open");
    }
    else
    {
        NSLog(@"It's Closed");
    }
}

-(IBAction)tabYPositionSliderValueChanged:(UISlider*)sender
{
    self.pullAcrossViewController.tabViewYPosition = sender.value;
}

-(IBAction)showSuperviewMaskSwitchValueChanged:(UISwitch*)sender
{
    self.pullAcrossViewController.showSuperviewMaskWhenOpen = sender.on;
}

-(IBAction)superviewMaskMaxAlphaSliderValueChanged:(UISlider *)sender
{
    self.pullAcrossViewController.superviewMaskMaxAlpha = sender.value;
}

-(IBAction)closedXOffsetSliderValueChanged:(UISlider *)sender
{
    self.pullAcrossViewController.closedXOffset = sender.value;
}

-(IBAction)openXOffsetSliderValueChanged:(UISlider*)sender
{
    self.pullAcrossViewController.openXOffset = sender.value;
}

-(IBAction)yOffsetSliderValueChanged:(UISlider*)sender
{
    self.pullAcrossViewController.yOffset = sender.value;
}


-(IBAction)tabViewCornerRadiusSliderValueChanged:(UISlider*)sender
{
    self.pullAcrossViewController.tabViewCornerRadius = sender.value;
}

-(IBAction)hiddenSwitchValueChanged:(UISwitch*)sender
{
    [self.pullAcrossViewController setHidden:sender.on animated:YES];
}

@end
