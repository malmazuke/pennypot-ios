//
//  PPAnimatingAddCancelIcon.m
//  Pennypot
//
//  Created by Matthew Nydam on 22/02/15.
//  Copyright (c) 2015 PP. All rights reserved.
//

#import "PPAnimatingAddControl.h"

#import <ViewUtils/ViewUtils.h>

@interface PPAnimatingAddControl ()

@property (nonatomic, strong) CAShapeLayer *verticalLine;
@property (nonatomic, strong) CAShapeLayer *horizontalLine;

- (void)createShapeLayers;

- (void)animateVerticalLine;
- (void)animateHorizontalLine;

- (IBAction)animateToState:(id)sender;

@end

static const CGFloat lineWidth = 1.0f;

//static const CGFloat verticalLineRotationAngle = 1.0f;
//static const CGFloat horizontalLineRotationAngle = 1.0f;
//
//static const CGFloat verticalAnimationDuration = 2.0f;
//static const CGFloat horizontalnimationDuration = 1.0f;

@implementation PPAnimatingAddControl

- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.backgroundColor = [UIColor clearColor];
        [self addTarget:self action:@selector(animateToState:) forControlEvents:UIControlEventTouchUpInside];
        [self.layer addSublayer:self.verticalLine];
        [self.layer addSublayer:self.horizontalLine];
    }
    return self;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    [self createShapeLayers];
}

- (void)createShapeLayers
{
    self.verticalLine.path = [UIBezierPath bezierPathWithRect: CGRectMake(self.boundsWidth/2 - (lineWidth/2), 0, lineWidth, self.boundsHeight)].CGPath;

    self.horizontalLine.path = [UIBezierPath bezierPathWithRect: CGRectMake(0, self.boundsHeight/2 - (lineWidth/2), self.boundsWidth, lineWidth)].CGPath;

    self.verticalLine.strokeColor = self.verticalLine.fillColor= [UIColor whiteColor].CGColor;
    self.horizontalLine.strokeColor = self.horizontalLine.fillColor = [UIColor whiteColor].CGColor;
}

#pragma mark - Actions

- (IBAction)animateToState:(id)sender
{
    [self animateVerticalLine];
    [self animateHorizontalLine];
}

#pragma mark - Animations

- (void)animateVerticalLine
{
    //TODO
//    NSNumber *rotationAtStart = [self.verticalLine valueForKeyPath:@"transform.rotation"];
//    
//    CATransform3D myRotationTransform = CATransform3DRotate(self.verticalLine.transform, verticalLineRotationAngle, self.center.x, self.center.y, 0.0);
//    
//    self.verticalLine.transform = myRotationTransform;
//    
//    CABasicAnimation *myAnimation = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
//    
//    myAnimation.duration = verticalAnimationDuration;
//    myAnimation.fromValue = rotationAtStart;
//    myAnimation.toValue = [NSNumber numberWithFloat:([rotationAtStart floatValue] + verticalLineRotationAngle)];
//    myAnimation.repeatCount = 0;
//    [self.verticalLine addAnimation:myAnimation forKey:@"transform.rotation"];

}

- (void)animateHorizontalLine
{
    // TODO
}

#pragma mark - Getters

- (CAShapeLayer *)verticalLine
{
    if (!_verticalLine) {
        _verticalLine = [CAShapeLayer new];
    }
    return _verticalLine;
}

- (CAShapeLayer *)horizontalLine
{
    if (!_horizontalLine) {
        _horizontalLine = [CAShapeLayer new];
    }
    return _horizontalLine;
}

@end
