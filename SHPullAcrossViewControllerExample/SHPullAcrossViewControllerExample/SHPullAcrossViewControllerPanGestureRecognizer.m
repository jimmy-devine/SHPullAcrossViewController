//
//  SHPullAcrossViewControllerPanGestureRecognizer.m
//  Skyhouse
//
//  Created by Bob Carson on 12/11/14.
//  Copyright (c) 2014 Skyhouse. All rights reserved.
//

#import "SHPullAcrossViewControllerPanGestureRecognizer.h"

@interface SHPullAcrossViewControllerPanGestureRecognizer ()

@property (nonatomic) BOOL dragging;
@property (nonatomic) CGPoint beginPoint;

@end

@implementation SHPullAcrossViewControllerPanGestureRecognizer

{
    BOOL _dragging;
    CGPoint _beginPoint;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
    UITouch *touch = [touches anyObject];
    _beginPoint = [touch locationInView:self.view];
    _dragging = NO;
}


- (void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesMoved:touches withEvent:event];
    
    if ( _dragging || self.state == UIGestureRecognizerStateFailed)
        return;
    
    const int kDirectionPanThreshold = 5;
    
    UITouch *touch = [touches anyObject];
    CGPoint nowPoint = [touch locationInView:self.view];
    
    if (fabsf(nowPoint.x - _beginPoint.x) > kDirectionPanThreshold) _dragging = YES;
    else if (fabsf(nowPoint.y - _beginPoint.y) > kDirectionPanThreshold) self.state = UIGestureRecognizerStateFailed;
}

@end
