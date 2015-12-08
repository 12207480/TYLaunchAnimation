//
//  UIView+TYLaunchAnimation.m
//  TYLaunchAnimationDemo
//
//  Created by tanyang on 15/12/3.
//  Copyright © 2015年 tanyang. All rights reserved.
//

#import "UIView+TYLaunchAnimation.h"

//current window
#define tyCurrentWindow [[UIApplication sharedApplication].windows firstObject]

@implementation UIView (TYLaunchAnimation)

- (void)showInView:(UIView *)superView animation:(id<TYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion
{
    if (superView == nil) {
        NSLog(@"superView can't nil");
        return;
    }
    superView.hidden = NO;
    [superView addSubview:self];
    [superView bringSubviewToFront:self];
    
    self.frame = superView.bounds;
    
    if (animation && [animation respondsToSelector:@selector(configureAnimationWithView:completion:)]) {
        [animation configureAnimationWithView:self completion:completion];
    }else {
        completion(YES);
    }
}

- (void)showInWindowWithAnimation:(id<TYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion
{
    [self showInView:tyCurrentWindow animation:animation completion:completion];
}

@end
