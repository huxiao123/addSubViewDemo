//
//  belowSubviewVC.m
//  addSubViewDemo
//
//  Created by 胡啸－ Mac on 16/11/25.
//  Copyright © 2016年 gzsc-hx. All rights reserved.
//

#import "belowSubviewVC.h"

@implementation belowSubviewVC
- (void)viewDidLoad{
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 100, 100)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    NSLog(@"self.view.subviews.count = %ld",self.view.subviews.count);
    
    UIView *greenView = [[UIView alloc]initWithFrame:CGRectMake(125, 125, 100, 100)];
    greenView.backgroundColor = [UIColor greenColor];
    //加载到redView视图之下
    [self.view insertSubview:greenView belowSubview:redView];
}
@end
