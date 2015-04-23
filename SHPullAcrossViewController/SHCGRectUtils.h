//
//  SHCGRectUtils.h
//  Skyhouse
//
//  Created by Bob Carson on 8/22/14.
//  Copyright (c) 2014 Skyhouse. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreGraphics/CoreGraphics.h>

@interface SHCGRectUtils : NSObject

CGRect CGRectX(CGRect rect, CGFloat x);
CGRect CGRectY(CGRect rect, CGFloat y);
CGRect CGRectOrigin(CGRect rect, CGPoint origin);
CGRect CGRectXY(CGRect rect, CGFloat x, CGFloat y);

CGRect CGRectWidth(CGRect rect, CGFloat width);
CGRect CGRectHeight(CGRect rect, CGFloat height);
CGRect CGRectWidthHeight(CGRect rect, CGFloat width, CGFloat height);
CGRect CGRectSize(CGRect rect, CGSize size);

@end
