//
//  ViewController.m
//  Accelerometer
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
    UIAccelerometer * acc = [UIAccelerometer sharedAccelerometer];
    acc.delegate = self;
    acc.updateInterval = 1.0f/30.0f;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) accelerometer:(UIAccelerometer *) accelerometer
        didAccelerate:(UIAcceleration *) acceleration
{
    CGPoint newPoint = CGPointMake(self.myView.center.x, self.myView.
                                   center.y);
    if(acceleration.x > 0 && newPoint.x < 290)
    {
        newPoint.x = newPoint.x + (acceleration.x * 20);
        [self.myView setCenter:newPoint];
    }
    if(acceleration.x < 0 && newPoint.x > 30)
    {
        newPoint.x = newPoint.x + (acceleration.x * 20);
        [self.myView setCenter:newPoint];
    }
    if(acceleration.y < 0 && newPoint.y < 430)
    {
        newPoint.y = newPoint.y - (acceleration.y * 20);
        [self.myView setCenter:newPoint];
    }
    if(acceleration.y > 0 && newPoint.y > 30)
    {
        newPoint.y = newPoint.y - (acceleration.y * 20);
        [self.myView setCenter:newPoint];
    }
}
@end
