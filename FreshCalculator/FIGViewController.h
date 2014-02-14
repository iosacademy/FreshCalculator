//
//  FIGViewController.h
//  FreshCalculator
//
//  Created by John Figueiredo on 2/12/14.
//  Copyright (c) 2014 John Figueiredo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FIGFreshCalculation.h"

BOOL userIsInTheMiddleOfTypingANumber;
BOOL numberIsNegative;
FIGFreshCalculation *calculation;

@interface FIGViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *calculatorDisplay;
@end
