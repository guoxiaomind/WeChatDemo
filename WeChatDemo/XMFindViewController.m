//
//  XMFindViewController.m
//  WeChatDemo
//
//  Created by David Guo on 16/3/1.
//  Copyright © 2016年 David. All rights reserved.
//

#import "XMFindViewController.h"

@interface XMFindViewController ()

@end

@implementation XMFindViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor     = [UIColor yellowColor];
    self.tabBarItem.title         =@"发现";
    self.tabBarItem.image         = [UIImage imageNamed:@"tabbar_discover"];
    self.tabBarItem.selectedImage = [UIImage imageNamed:@"tabbar_discoverHL"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        double delayInsecounds = 2.0;
        dispatch_time_t popTime = dispatch_time(DISPATCH_TIME_NOW, delayInsecounds *NSEC_PER_SEC);
        dispatch_after(popTime, dispatch_get_main_queue(), ^{
            
        });
    });
    dispatch_group_t group = dispatch_group_create();
    
    dispatch_group_async(group, dispatch_get_global_queue(0, 0), ^{
        
    });
    dispatch_group_async(group, dispatch_get_global_queue(0, 0), ^{
        
    });
    dispatch_group_notify(group, dispatch_get_global_queue(0, 0), ^{
        
    });
    
    [[UIApplication sharedApplication] beginBackgroundTaskWithExpirationHandler:^{
        
    }];
}

@end
