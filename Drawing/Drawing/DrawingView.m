//
//  DrawingView.m
//  Drawing
//
//  Created by mo khan on 2013-06-10.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "DrawingView.h"

@implementation DrawingView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    CGRect bounds = [self bounds];
    [[UIColor blackColor] set];
    UIRectFill(bounds);
    
    
//    CGRect square = CGRectMake(50, 50, 100, 100);
//    [[UIColor redColor] set];
//    UIRectFill(square);
//    [[UIColor blackColor] set];
//    UIRectFrame(square);
    
    
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextBeginPath(context);
    CGContextMoveToPoint(context, 200, 50);
//    CGContextAddLineToPoint(context, 175, 125);
//    CGContextAddArcToPoint(context, 150, 225, 225, 325, 100);
//    CGContextAddCurveToPoint(context, 50, 50, 50, 300, 175, 375);
    
//    CGContextAddLineToPoint(context, 300, 375);
//    CGContextAddCurveToPoint(context, 300, 400, 300, 25, 200, 50);
//    CGContextClosePath(context);
//    [[UIColor whiteColor] setFill];
    
//    [[UIColor redColor] setStroke];
//    CGContextSetLineWidth(context, 5);
    
    CGContextDrawPath(context, kCGPathFillStroke);
//    CGContextDrawPath(context, kCGPathFillStroke);
    
    
    CGRect squareForCircle = CGRectMake(50, 300, 100, 100);
    CGContextAddEllipseInRect(context, squareForCircle);
    [[UIColor blueColor] set];
    CGContextDrawPath(context, kCGPathFill);
}

@end
