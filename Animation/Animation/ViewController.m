//
//  ViewController.m
//  Animation
//
//  Created by mo khan on 2013-06-10.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    [self newValues];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)animate
{
    // put [UIView animate... in here
    [UIView animateWithDuration:self.intDur delay:0 options:
     UIViewAnimationOptionCurveEaseInOut animations:^
     {
         CGPoint myPoint = self.myView.center;
         myPoint.y = self.randY;
         myPoint.x = self.randX;
         self.myView.center = myPoint;
         self.myView.transform = CGAffineTransformMakeRotation(self.
                                                               intRot);
         self.myView.alpha = self.alp;
     }
                     completion:^(BOOL f)
     {
         [self newValues];
     }];
}

- (void)newValues
{
    self.randX = (float)random() / RAND_MAX * 320;
    self.randY = (float)random() / RAND_MAX * 460;
    self.intDur = (int)((float)random() / RAND_MAX * 5) + 1;
    self.intRot = (int)((float)random() / RAND_MAX * 6);
    self.alp = (float)random() / RAND_MAX;
    [self animate];
}

@end
