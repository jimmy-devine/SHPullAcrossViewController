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
    
    self.view.backgroundColor = [UIColor redColor];
    
    self.pullAcrossViewController = [[SHPullAcrossViewController alloc] initWithViewController:[[UIViewController alloc] init]];
    self.pullAcrossViewController.delegate = self;
    
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

@end
