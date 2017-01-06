//
//  UIView+VisRotation.m
//  Example
//
//  Created by WzxJiang on 17/1/6.
//  Copyright © 2017年 wzxjiang. All rights reserved.
//

#import "UIView+VisRotate.h"

@implementation UIView (VisRotation)

- (void)vis_rotateToFullScreen {
    [self vis_rotateToOrientation:UIInterfaceOrientationLandscapeRight
                           bounds:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.height, [UIScreen mainScreen].bounds.size.width)
                         duration:0.5];
}

- (void)vis_rotateToOrientation:(UIInterfaceOrientation)orientation bounds:(CGRect)rect duration:(CGFloat)duration {
    [UIView animateWithDuration:duration animations:^{
        if ([[UIApplication sharedApplication] respondsToSelector:@selector(setStatusBarOrientation:)]) {
            SEL selector = @selector(setStatusBarOrientation:);
            IMP imp = [[UIApplication sharedApplication] methodForSelector:selector];
            void (*func)(id, SEL, UIInterfaceOrientation) = (void *)imp;
            func([UIApplication sharedApplication], selector, orientation);
        }
        
        switch (orientation) {
            case UIInterfaceOrientationPortrait:
                self.transform = CGAffineTransformMakeRotation(0);
                break;
            case UIInterfaceOrientationLandscapeLeft:
                self.transform = CGAffineTransformMakeRotation(-M_PI_2);
                break;
            case UIInterfaceOrientationLandscapeRight:
                self.transform = CGAffineTransformMakeRotation(M_PI_2);
                break;
            case UIInterfaceOrientationPortraitUpsideDown:
                self.transform = CGAffineTransformMakeRotation(M_PI);
                break;
            default:
                break;
        }
        
        self.bounds = rect;
    }];
}

@end
