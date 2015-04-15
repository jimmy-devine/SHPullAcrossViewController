//
//  SHPullAcrossView.h
//  Skyhouse
//
//  Created by Bob Carson on 12/11/14.
//  Copyright (c) 2014 Skyhouse. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SHPullAcrossViewController;

@interface SHPullAcrossView : UIView

@property (nonatomic, strong) UIView* tabView;
@property (nonatomic, strong) UIViewController* contentViewController;
@property (nonatomic, strong) UIView* contentView;

@property (nonatomic, weak) UIView* greyBackgroundView;

-(instancetype)initWithController:(SHPullAcrossViewController*)controller;

@end
