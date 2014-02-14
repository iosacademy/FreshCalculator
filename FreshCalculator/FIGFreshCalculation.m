//
//  FIGFreshCalculation.m
//  FreshCalculator
//
//  Created by John Figueiredo on 2/13/14.
//  Copyright (c) 2014 John Figueiredo. All rights reserved.
//

#import "FIGFreshCalculation.h"

@implementation FIGFreshCalculation

-(void)setOperand:(double)anOperand {
  operand = anOperand;
}

-(void)performWaitingOperation {
  if ([@"+" isEqual:waitingOperation]) {
    operand = waitingOperand + operand;
  } else if ([@"-" isEqual:waitingOperation]) {
    operand = waitingOperand - operand;
  } else if ([@"x" isEqual:waitingOperation]) {
    operand = waitingOperand * operand;
  } else if ([@"÷" isEqual:waitingOperation]) {
    if (operand) {
      operand = waitingOperand / operand;
    }
  }
}

-(double)performOperation:(NSString *)operation {
  if ([operation isEqual:@"sqrt"]) {
    operand = sqrt(operand);
  } else {
    [self performWaitingOperation];
    waitingOperation = operation;
    waitingOperand = operand;
  }
  return operand;
}
@end
