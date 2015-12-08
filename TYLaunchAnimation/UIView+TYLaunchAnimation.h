//
//  UIView+TYLaunchAnimation.h
//  TYLaunchAnimationDemo
//
//  Created by tanyang on 15/12/3.
//  Copyright © 2015年 tanyang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TYLaunchAnimationProtocol.h"

@interface UIView (TYLaunchAnimation)

- (void)showInWindowWithAnimation:(id<TYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion;

- (void)showInView:(UIView *)superView animation:(id<TYLaunchAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion;

@end
