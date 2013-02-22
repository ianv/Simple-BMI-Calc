//
//  ViewController.m
//  Simple BMI Calc
//
//  Created by Ian Vergara on 2/14/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize heightLabel = _heightLabel;
@synthesize weightLabel = _weightLabel;
@synthesize unitSwitch = _unitSwitch;

-(IBAction)unitSwitch:(UISwitch *)sender
{
 //   if (sender.isON = TRUE) {
 //       self.heightLabel.text = @"in.";
 //       self.weightLabel.text = @"lbs.";
 //   } else {
 //       self.heightLabel.text = @"cm.";
//      self.weightLabel.text = @"kg.";
//    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
