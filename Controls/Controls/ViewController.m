//
//  ViewController.m
//  Controls
//
//  Created by mo khan on 2013-05-14.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    // Do any additional setup after loading the view, typically from a nib.
    [super viewDidLoad];
    self.myLabel.text = @"This is a label";
//    [self.myTextField setDelegate:self];
    [self sliderActions:@""];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)doSomething:(id)sender
{
    
}

-(IBAction)changeBackgroundColour:(id)sender
{
    float r = (float)random()/RAND_MAX;
    float g = (float)random()/RAND_MAX;
    float b = (float)random()/RAND_MAX;
    self.view.backgroundColor = [UIColor colorWithRed:r green:g blue:b alpha:1];
}

-(IBAction)scActions:(id)sender
{
    switch(self.mySegmentedControl.selectedSegmentIndex)
    {
        case 0:
            self.myLabel.text = @"segment 1";
            break;
        case 1:
            self.myLabel.text = @"segment 2";
            break;
        case 2:
            self.myLabel.text = @"segment 3";
            break;
    }
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

-(IBAction)sliderActions:(id)sender
{
    self.mySliderLabel.text = [NSString stringWithFormat:@"%d", (int)self.mySlider.value];
}

-(IBAction)switchActions:(id)sender
{
    NSLog(@"%d", self.mySwitch.on);
    if(self.mySwitch.on){
        self.myLabel.text = @"On!";
    }
    else{
        self.myLabel.text = @"OFF";
    }
}

-(IBAction) showAlert:(id)sender
{
    UIAlertView * myAlert = [[UIAlertView alloc]
                             initWithTitle:@"the title" message:@"this is a message" delegate:self cancelButtonTitle:@"cancel" otherButtonTitles:@"ok", @"sure", nil];
    [myAlert show];
}
@end
