//
//  TYLaunchFadeScaleAnimation.m
//  TYLaunchAnimationDemo
//
//  Created by tanyang on 15/12/3.
//  Copyright © 2015年 tanyang. All rights reserved.
//

#import "TYLaunchFadeScaleAnimation.h"

@implementation TYLaunchFadeScaleAnimation

#pragma mark - init method

- (instancetype)init
{
    if (self = [super init]) {
        self.scale = 1.6;
        self.duration = 0.6;
        self.delay = 0.2;
        self.options = UIViewAnimationOptionCurveEaseOut;
    }
    return self;
}

- (instancetype)initWithScale:(CGFloat)scale delay:(CGFloat)delay
{
    if (self = [self init]) {
        self.scale = scale;
        self.delay = delay;
    }
    return self;
}

+ (instancetype)fadeAnimation
{
    return [[self alloc]initWithScale:1.0 delay:0.2];
}

+ (instancetype)fadeAnimationWithDelay:(CGFloat)delay
{
    return [[self alloc]initWithScale:1.0 delay:delay];
}

+ (instancetype)fadeScaleAnimation
{
    return [[self alloc]init];
}

#pragma mark - protocol method

- (void)configureAnimationWithView:(UIView *)view completion:(void (^)(BOOL))completion
{
    [UIView animateWithDuration:self.duration delay:self.delay options:self.options animations:^{
        
        view.transform = CGAffineTransformMakeScale(_scale, _scale);
        view.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        completion(finished);
        [view removeFromSuperview];
    }];
}

@end
