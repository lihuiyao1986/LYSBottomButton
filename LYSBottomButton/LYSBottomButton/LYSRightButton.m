//
//  LYSRightButton.m
//  LYSBottomButton
//
//  Created by jk on 2017/4/19.
//  Copyright © 2017年 Goldcard. All rights reserved.
//

#import "LYSRightButton.h"

@implementation LYSRightButton

-(void)layoutSubviews{
    [super layoutSubviews];
    self.layer.masksToBounds = YES;
    CGRect titleFrame = self.titleLabel.frame;
    titleFrame.origin.x = titleFrame.origin.x - CGRectGetWidth(self.imageView.frame) - self.imageRightPadding;
    self.titleLabel.frame = titleFrame;
    self.titleLabel.textAlignment = NSTextAlignmentCenter;
    CGRect imageFrame = self.imageView.frame;
    imageFrame.origin.x = CGRectGetMaxX(self.titleLabel.frame) + self.imageRightPadding;
    self.imageView.frame = imageFrame;
}

@end
