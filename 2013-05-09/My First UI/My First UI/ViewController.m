//
//  ViewController.m
//  My First UI
//
//  Created by mo khan on 2013-05-09.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    self.myData = [[Data alloc] init];
    self.myData.strData = @"Button has been clicked";
    self.myData.clickCount = 0;
    self.firstLabel.text = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)firstButton:(id)sender {
    self.myData.clickCount++;
    self.firstLabel.text = [[self.myData.strData stringByAppendingFormat:@"%d", self.myData.clickCount] stringByAppendingFormat:@" times"];
}
@end
