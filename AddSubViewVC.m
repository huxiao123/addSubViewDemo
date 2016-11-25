//
//  AddSubViewVC.m
//  addSubViewDemo
//
//  Created by 胡啸－ Mac on 16/11/25.
//  Copyright © 2016年 gzsc-hx. All rights reserved.
//

#import "AddSubViewVC.h"

@implementation AddSubViewVC

- (void)viewDidLoad{
    self.view.backgroundColor = [UIColor whiteColor];
    UIView *redView = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *blueView = [[UIView alloc]initWithFrame:CGRectMake(150, 150, 100, 100)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
}
@end
