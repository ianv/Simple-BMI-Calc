//
//  ViewController.m
//  Simple BMI Calc
//
//  Created by Ian Vergara on 2/14/13.
//  Copyright (c) 2013 Ian Vergara. All rights reserved.
//  ian.vergara@gmail.com

#import "ViewController.h"

@interface ViewController ()
{
    BOOL toggle;
}

@end

@implementation ViewController

@synthesize heightLabel = _heightLabel;
@synthesize weightLabel = _weightLabel;
@synthesize category = _category;
@synthesize bmi = _bmi;
@synthesize height = _height;
@synthesize weight = _weight;

-(IBAction)unitSwitch:(UISwitch *)sender
{
    toggle = !toggle;
    if (toggle) {
        self.heightLabel.text = @"in.";
        self.weightLabel.text = @"lbs.";
    } else {
        self.heightLabel.text = @"cm.";
        self.weightLabel.text = @"kg.";
    }
}

-(IBAction)calculateBMI:(UIButton *)sender
{
    float m = 0;
    float kg = 0;
    if(toggle){
        m = self.height.text.doubleValue * .0254;
        kg = self.weight.text.doubleValue * 0.453592;
    } else {
    m = self.height.text.doubleValue;
    kg = self.weight.text.doubleValue;
    }
    float bmi = kg/(m*m);
    
    NSString* temp = [NSString stringWithFormat:@"%1.2f", bmi];
    
    if(bmi<16.00)
    {
        self.category.text = @"Severe Thinness";
        self.bmi.text = temp;
    }
    else if(bmi >= 16.00 && bmi < 16.99)
    {
        self.category.text = @"Moderate Thinness";
       self.bmi.text = temp;

    }
    else if(bmi >= 17.00 && bmi < 18.49)
    {
        self.category.text = @"Mild Thinness";
        self.bmi.text = temp;
    }
    else if(bmi >= 18.50 && bmi < 24.99)
    {
        self.category.text = @"Normal Range";
        self.bmi.text = temp;
    }
    else if(bmi >= 25.00 && bmi < 29.99)
    {
        self.category.text = @"Overweight";
        self.bmi.text = temp;

    }
    else if(bmi >= 30.00 && bmi < 34.99)
    {
        self.category.text = @"Obese Class I (Moderate)";
        self.bmi.text = temp;
    }
    else if(bmi >= 35.00 && bmi < 39.99)
    {
        self.category.text = @"Obese Class II (Severe)";
        self.bmi.text = temp;

    }
    else if (bmi >39.99)
    {
        self.category.text = @"Obese Class III (Very Severe)";
        self.bmi.text = temp;
    }
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [self.weight resignFirstResponder];
    [self.height resignFirstResponder];
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
