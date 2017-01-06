//
//  UIView+VisRotation.h
//  Example
//
//  Created by WzxJiang on 17/1/6.
//  Copyright © 2017年 wzxjiang. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (VisRotate)

- (void)vis_rotateToFullScreen;

- (void)vis_rotateToOrientation:(UIInterfaceOrientation)orientation
                         bounds:(CGRect)rect
                       duration:(CGFloat)duration;
@end
