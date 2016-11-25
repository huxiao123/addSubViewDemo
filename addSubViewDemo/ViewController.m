//
//  ViewController.m
//  addSubViewDemo
//
//  Created by 胡啸－ Mac on 16/11/25.
//  Copyright © 2016年 gzsc-hx. All rights reserved.
//

#import "ViewController.h"
#import "AddSubViewVC.h"
#import "AtIndexViewVC.h"
#import "aboveSubviewVC.h"
#import "belowSubviewVC.h"

@interface ViewController ()
@property (nonatomic,strong)NSArray *VCArray;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    NSArray *titleArray = @[@"addSubView",
                            @"insertSubview: atIndex:",
                            @"insertSubview: aboveSubview:",
                            @"insertSubview: belowSubview:"];
    
    _VCArray = @[@"AddSubViewVC",
                 @"AtIndexViewVC",
                 @"aboveSubviewVC",
                 @"belowSubviewVC"];
    
    for (NSInteger i=0; i<titleArray.count; i++) {
        UIButton *tagButton = [UIButton buttonWithType:UIButtonTypeCustom];
        tagButton.frame = CGRectMake(100, 100*(i+1), 100, 50);
        [tagButton setTitle:titleArray[i] forState:UIControlStateNormal];
        [tagButton setBackgroundColor:[[UIColor blueColor] colorWithAlphaComponent:0.5]];
        [tagButton addTarget:self action:@selector(pushControl:) forControlEvents:UIControlEventTouchUpInside];
        [tagButton sizeToFit];
        tagButton.tag = i;
        [self.view addSubview:tagButton];
    }
}

- (void)pushControl:(UIButton *)btn{
    Class vcStr = NSClassFromString(_VCArray[btn.tag])  ;
    UIViewController *vc = [[vcStr alloc]init];
    [self.navigationController pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}

@end
