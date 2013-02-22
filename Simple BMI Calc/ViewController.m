//
//  ViewController.m
//  Simple BMI Calc
//
//  Created by Ian Vergara on 2/14/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
{
    BOOL toggle;
}

@end

@implementation ViewController

@synthesize heightLabel = _heightLabel;
@synthesize weightLabel = _weightLabel;
@synthesize unitSwitch = _unitSwitch;
@synthesize height = _height;
@synthesize weight = _weight;

-(IBAction)unitSwitch:(UISwitch *)sender
{
    toggle = !toggle;
    if (toggle) {
        self.heightLabel.text = @"in.";
        self.weightLabel.text = @"lbs.";
        NSLog(@"hi");
    } else {
        self.heightLabel.text = @"cm.";
        self.weightLabel.text = @"kg.";
        NSLog(@"bye");
    }
}

-(IBAction)calculateBMI:(UIButton *)sender
{
    int a = 0;
    int b = 0;
    a = self.height.text.intValue;
    b = self.weight.text.intValue;
    int c = a + b;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    toggle = TRUE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
