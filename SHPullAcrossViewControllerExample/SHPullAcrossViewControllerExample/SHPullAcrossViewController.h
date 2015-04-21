//
//  SHPullAcrossViewController.h
//  Skyhouse
//
//  Created by Bob Carson on 12/9/14.
//  Copyright (c) 2014 Skyhouse. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SHPullAcrossView.h"

typedef NS_ENUM(NSInteger, SHPullAcrossVCPosition)  {
    SHPullAcrossVCPositionClosed,
    SHPullAcrossVCPositionOpen
};

@class SHPullAcrossViewController;

@protocol SHPullAcrossViewControllerDelegate <NSObject>

@optional

-(void)pullAcrossViewController:(SHPullAcrossViewController*)controller didChangePosition:(SHPullAcrossVCPosition)position hidden:(BOOL)hidden;

@end

@interface SHPullAcrossViewController : UIViewController <UIGestureRecognizerDelegate, SHPullAcrossViewDelegate>

@property (nonatomic) SHPullAcrossVCPosition position;
@property (nonatomic) BOOL hidden;

/*
 This is the view that sticks out while the controller is in the closed state. It is what the user pulls or taps to extend the SHPullAcrossViewController.  This view is created by SHPullAcrossViewController but can be altered safely.
 
 Do not change the frame for this view.  If you want to change the frame of the tabView use tabViewYPosition and tabViewSize.
*/
@property (nonatomic, readonly) UIView* tabView;


/*
 The y postition of the tab view.  Use this rather than setting the frame of the tabView.
 
 Defaults to 72.
 */
@property (nonatomic) CGFloat tabViewYPosition;

/*
 The size of the tab view.  Use this rather than setting the frame of the tabView.
 
 Defaults to (26, 32).
 */
@property (nonatomic) CGSize tabViewSize;

/*
 The color that will be shown over the parent view.  The alpha of this color will be changed programmatically to an appropriate value.  As such, the alpha of this color will be disregarded.

 Defaults to 10% grey.
 */
@property (nonatomic, copy) UIColor* maskColor;

@property (nonatomic, weak) id<SHPullAcrossViewControllerDelegate> delegate;

-(instancetype)initWithViewController:(UIViewController*)viewController;

-(void)setPosition:(SHPullAcrossVCPosition)position;
-(void)setPosition:(SHPullAcrossVCPosition)position animated:(BOOL)animated;

-(void)setHidden:(BOOL)hidden;
-(void)setHidden:(BOOL)hidden animated:(BOOL)animated;

@end

