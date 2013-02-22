//
//  ViewController.h
//  Simple BMI Calc
//
//  Created by Ian Vergara on 2/14/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

@property IBOutlet UILabel* heightLabel;
@property IBOutlet UILabel* weightLabel;
@property IBOutlet UISwitch* unitSwitch;
@property IBOutlet UITextField* height;
@property IBOutlet UITextField* weight;

//-(IBAction)unitSwitch:(UISwitch*)sender;
-(IBAction)calculateBMI:(UIButton*)sender;

@end
