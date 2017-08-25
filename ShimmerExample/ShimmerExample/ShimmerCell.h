//
//  ShimmerCell.h
//  ShimmerExample
//
//  Created by Bhargav Kukadiya on 24/08/17.
//  Copyright © 2017 Bhargav Kukadiya. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <FBShimmeringView.h>

@interface ShimmerCell : UITableViewCell

@property (weak, nonatomic) IBOutlet FBShimmeringView *vwShimmer;
@property (weak, nonatomic) IBOutlet UIView *vwMain;
@property (weak, nonatomic) IBOutlet UIImageView *imgView;
@property (weak, nonatomic) IBOutlet UILabel *lbl1;
@property (weak, nonatomic) IBOutlet UILabel *lbl2;

@end
