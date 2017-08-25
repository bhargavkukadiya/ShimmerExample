//
//  ViewController.m
//  ShimmerExample
//
//  Created by Bhargav Kukadiya on 24/08/17.
//  Copyright © 2017 Bhargav Kukadiya. All rights reserved.
//

#import "ViewController.h"
#import "ShimmerCell.h"
#import <FBShimmeringView.h>

@interface ViewController ()
{
    BOOL isLoaded;
}
@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 3;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ShimmerCell *cell = [tableView dequeueReusableCellWithIdentifier:@"idShimmerCell"];
    
    if (!cell)
    {
        [tableView registerNib:[UINib nibWithNibName:@"ShimmerCell" bundle:nil] forCellReuseIdentifier:@"idShimmerCell"];
        NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"ShimmerCell" owner:self options:nil];
        cell = [nib objectAtIndex:0];
    }
    
    cell.vwShimmer.contentView = cell.vwMain;
    cell.vwShimmer.shimmering = !isLoaded;
    
    UIColor *myColor = isLoaded ? [UIColor clearColor] : [UIColor lightGrayColor];

    cell.imgView.backgroundColor = myColor;
    cell.lbl1.backgroundColor = myColor;
    cell.lbl2.backgroundColor = myColor;
    
    if (isLoaded)
    {
        cell.imgView.image = [UIImage imageNamed:@"Image"];
        cell.lbl1.text = @"Lord Ganesha";
        cell.lbl2.text = @":)";
    }
    else
    {
        cell.imgView.image = [UIImage imageNamed:@""];
        cell.lbl1.text = @"";
        cell.lbl2.text = @"";
    }
    
    return cell;
}

- (IBAction)btnResetClicked:(id)sender
{
    [self.view endEditing:YES];
    
    isLoaded = !isLoaded;
    [_tblShimmer reloadData];
}

@end
