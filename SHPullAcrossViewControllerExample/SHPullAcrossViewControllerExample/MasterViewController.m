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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    //Set up slider
    UISlider* slider = [[UISlider alloc] initWithFrame:CGRectMake(10, 100, 300, 20)];
    [self.view addSubview:slider];
    [slider addTarget:self action:@selector(sliderValueChanged:) forControlEvents:UIControlEventValueChanged];
    
    //Set up Pull Across View
    UIViewController* contentViewController = [[UIViewController alloc] init];
    contentViewController.view.frame = CGRectMake(0, 0, self.view.frame.size.width - 50, self.view.frame.size.height);
    contentViewController.view.backgroundColor = [UIColor blueColor];
    
    self.pullAcrossViewController = [[SHPullAcrossViewController alloc] initWithViewController:contentViewController];
    self.pullAcrossViewController.delegate = self;
    self.pullAcrossViewController.tabView.backgroundColor = [UIColor orangeColor];
    
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

-(IBAction)sliderValueChanged:(UISlider *)sender
{
    self.pullAcrossViewController.tabViewYPosition = 70 + 200 * sender.value;
}

@end
