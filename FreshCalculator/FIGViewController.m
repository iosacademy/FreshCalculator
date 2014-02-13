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

- (void)viewDidLoad {
    [super viewDidLoad];
}

#pragma mark - IBActions
- (IBAction)digitPressed:(id)sender {
  NSString *digit = [[sender titleLabel] text];
  if ([self.calculatorDisplay.text isEqualToString: @"0"]) {
    [self.calculatorDisplay setText:digit];
    userIsInTheMiddleOfTypingANumber = YES;
  } else if (userIsInTheMiddleOfTypingANumber) {
    [self.calculatorDisplay setText:[[self.calculatorDisplay text] stringByAppendingString:digit]];
  } else {
    [self.calculatorDisplay setText:digit];
    userIsInTheMiddleOfTypingANumber = YES;
  }
}

- (IBAction)clearButtonPressed:(id)sender {
  [self.calculatorDisplay setText:@"0"];
}

- (IBAction)percentButtonPressed:(id)sender {
  NSString *string = self.calculatorDisplay.text;
  float number = [string floatValue];
  float percent = number/100.f;
  NSString *finalString = [[NSNumber numberWithFloat:percent] stringValue];
  [self.calculatorDisplay setText:finalString];
}

- (IBAction)negativeOrPositiveButtonPressed:(id)sender {
  NSString *originalString = self.calculatorDisplay.text;
  
  if (numberIsNegative) {
    NSString *newString = [originalString substringWithRange:NSMakeRange(1, [originalString length]-1)];
    [self.calculatorDisplay setText:newString];
    numberIsNegative = NO;
  } else if (![originalString isEqualToString:@"0"]) {
    [self.calculatorDisplay setText:[@"-" stringByAppendingString:originalString]];
    numberIsNegative = YES;
  }
}

#pragma mark - Private Methods
- (UIStatusBarStyle)preferredStatusBarStyle {
  return UIStatusBarStyleLightContent;
}

@end
