//
//  ViewController.m
//  Example
//
//  Created by WzxJiang on 17/1/6.
//  Copyright © 2017年 wzxjiang. All rights reserved.
//

#import "ViewController.h"
#import "UIView+VisRotate.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    UIControl * view = [UIControl new];
    view.backgroundColor = [UIColor redColor];
    view.center = self.view.center;
    view.bounds = CGRectMake(0, 0, 300, 300);
    [view addTarget:self action:@selector(rotate:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:view];
    
    UIButton * topbutton = [UIButton buttonWithType:UIButtonTypeSystem];
    topbutton.frame = CGRectMake(10, 10, 100, 30);
    topbutton.backgroundColor = [UIColor blackColor];
    [topbutton setTitle:@"Back" forState:UIControlStateNormal];
    [topbutton setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [topbutton addTarget:self action:@selector(back:) forControlEvents:UIControlEventTouchUpInside];
    [view addSubview:topbutton];
}

- (void)back:(UIButton *)sender {
    [sender.superview vis_rotateToOrientation:UIInterfaceOrientationPortrait
                                       bounds:CGRectMake(0, 0, 300, 300)
                                     duration:0.5];
}

- (void)rotate:(UIControl *)sender {
    [sender vis_rotateToFullScreen];
}

- (BOOL)shouldAutorotate {
    return NO;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
