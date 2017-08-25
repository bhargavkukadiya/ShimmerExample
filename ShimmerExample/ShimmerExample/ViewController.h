//
//  ViewController.h
//  ShimmerExample
//
//  Created by Bhargav Kukadiya on 24/08/17.
//  Copyright © 2017 Bhargav Kukadiya. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *tblShimmer;

@end

