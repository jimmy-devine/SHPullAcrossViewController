//
//  SHCGRectUtils.m
//  Skyhouse
//
//  Created by Bob Carson on 8/22/14.
//  Copyright (c) 2014 Skyhouse. All rights reserved.
//

#import "SHCGRectUtils.h"

@implementation SHCGRectUtils

CGRect CGRectX(CGRect rect, CGFloat x)
{
    rect.origin.x = x;
    return rect;
}

CGRect CGRectY(CGRect rect, CGFloat y)
{
    rect.origin.y = y;
    return rect;
}

CGRect CGRectOrigin(CGRect rect, CGPoint origin)
{
    rect.origin = origin;
    return rect;
}

CGRect CGRectXY(CGRect rect, CGFloat x, CGFloat y)
{
    rect.origin.x = x;
    rect.origin.y = y;
    return rect;
}

CGRect CGRectWidth(CGRect rect, CGFloat width)
{
    rect.size.width = width;
    return rect;
}

CGRect CGRectHeight(CGRect rect, CGFloat height)
{
    rect.size.height = height;
    return rect;
}

CGRect CGRectWidthHeight(CGRect rect, CGFloat width, CGFloat height)
{
    rect.size.width = width;
    rect.size.height = height;
    return rect;
}

CGRect CGRectSize(CGRect rect, CGSize size)
{
    rect.size = size;
    return rect;
}

@end
