//
//  XMMeViewController.m
//  WeChatDemo
//
//  Created by David Guo on 16/3/1.
//  Copyright © 2016年 David. All rights reserved.
//

#import "XMMeViewController.h"

@interface XMMeViewController ()

@end

@implementation XMMeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor     = [UIColor purpleColor];
    self.tabBarItem.title         =@"我";
    self.tabBarItem.image         = [UIImage imageNamed:@"tabbar_me"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_meHL"];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
