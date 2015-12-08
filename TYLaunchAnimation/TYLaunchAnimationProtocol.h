//
//  TYLaunchAnimationProtocol.h
//  TYLaunchAnimationDemo
//
//  Created by tanyang on 15/12/3.
//  Copyright © 2015年 tanyang. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TYLaunchAnimationProtocol <NSObject>

- (void)configureAnimationWithView:(UIView *)view completion:(void (^)(BOOL finished))completion;

@end
