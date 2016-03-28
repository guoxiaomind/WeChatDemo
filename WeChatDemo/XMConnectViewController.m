//
//  XMConnectViewController.m
//  WeChatDemo
//
//  Created by David Guo on 16/3/1.
//  Copyright © 2016年 David. All rights reserved.
//

#import "XMConnectViewController.h"

@interface XMConnectViewController ()

@end

@implementation XMConnectViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor     = [UIColor greenColor];
    self.tabBarItem.title         =@"通讯录";
    self.tabBarItem.image         = [UIImage imageNamed:@"tabbar_contacts"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_contactsHL"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
