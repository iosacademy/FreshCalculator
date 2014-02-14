//
//  FIGFreshCalculation.h
//  FreshCalculator
//
//  Created by John Figueiredo on 2/13/14.
//  Copyright (c) 2014 John Figueiredo. All rights reserved.
//

#import <Foundation/Foundation.h>

double operand;
NSString *waitingOperation;
double waitingOperand;

@interface FIGFreshCalculation : NSObject
- (void)setOperand:(double)anOperand;
- (double)performOperation:(NSString *)operation;
@end
