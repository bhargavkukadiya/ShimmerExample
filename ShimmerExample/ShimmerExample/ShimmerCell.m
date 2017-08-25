//
//  ShimmerCell.m
//  ShimmerExample
//
//  Created by Bhargav Kukadiya on 24/08/17.
//  Copyright © 2017 Bhargav Kukadiya. All rights reserved.
//

#import "ShimmerCell.h"

@implementation ShimmerCell

- (void)awakeFromNib
{
    [super awakeFromNib];
}

- (void)layoutSubviews
{
    [super layoutSubviews];
    
    _imgView.layer.cornerRadius = CGRectGetWidth(_imgView.frame) / 2;
    _imgView.clipsToBounds= YES;
    
    _lbl1.layer.cornerRadius = 5.0f;
    _lbl1.clipsToBounds = YES;
    
    _lbl2.layer.cornerRadius = 5.0f;
    _lbl2.clipsToBounds = YES;
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];
}

@end
