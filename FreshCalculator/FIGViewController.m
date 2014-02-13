//
//  FIGViewController.m
//  FreshCalculator
//
//  Created by John Figueiredo on 2/12/14.
//  Copyright (c) 2014 John Figueiredo. All rights reserved.
//

#import "FIGViewController.h"

@interface FIGViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *buttonCollection;

@end

@implementation FIGViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
  [self customizeButtons];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Private Methods
- (void)customizeButtons {
  for (UILabel *label in self.buttonCollection) {
//    CALayer * layer = [label layer];
//    [layer setMasksToBounds:YES];
//    [layer setCornerRadius:0.0]; //when radius is 0, the border is a rectangle
//    [layer setBorderWidth:1.0];
//    [layer setBorderColor:[[UIColor blackColor] CGColor]];
  }
}

@end
