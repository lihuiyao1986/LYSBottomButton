//
//  ViewController.m
//  LYSBottomButton
//
//  Created by jk on 2017/4/19.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "ViewController.h"
#import "LYSRightButton.h"
#import "LYSBottomButton.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    LYSRightButton * btn = [LYSRightButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(20, 120, CGRectGetWidth(self.view.frame) - 40, 44.f);
    btn.layer.borderWidth = 1;
    btn.layer.borderColor = [UIColor redColor].CGColor;
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn.layer.masksToBounds = YES;
    btn.imageRightPadding = 10.f;
    [btn setTitle:@"图片在右" forState:UIControlStateNormal];
    [btn setImage:[UIImage imageNamed:@"agree_icon"] forState:UIControlStateNormal];
    [self.view addSubview:btn];
    
    LYSBottomButton * btn2 = [LYSBottomButton buttonWithType:UIButtonTypeCustom];
    btn2.frame = CGRectMake(20, 180, CGRectGetWidth(self.view.frame) - 40, 60.f);
    btn2.layer.borderWidth = 1;
    btn2.layer.borderColor = [UIColor redColor].CGColor;
    [btn2 setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    btn2.layer.masksToBounds = YES;
    btn2.titlePadding = 10.f;
    [btn2 setTitle:@"图片在上" forState:UIControlStateNormal];
    [btn2 setImage:[UIImage imageNamed:@"agree_icon"] forState:UIControlStateNormal];
    [self.view addSubview:btn2];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
