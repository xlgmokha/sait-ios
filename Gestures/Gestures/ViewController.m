//
//  ViewController.m
//  Gestures
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
    UITapGestureRecognizer * tapper = [[UITapGestureRecognizer alloc]
                                       initWithTarget:self action:@selector(tapped:)];
    [self.myView addGestureRecognizer:tapper];
    
    UILongPressGestureRecognizer * longPress = [[UILongPressGestureRecognizer
                                                 alloc] initWithTarget:self action:@selector(longPressed:)];
    longPress.minimumPressDuration = 1;
    [self.myView addGestureRecognizer:longPress];
    
    UIPinchGestureRecognizer * pinch = [[UIPinchGestureRecognizer alloc]
                                        initWithTarget:self action:@selector(pinching:)];
    [self.myView addGestureRecognizer:pinch];
    
    UISwipeGestureRecognizer * swipeUp = [[UISwipeGestureRecognizer alloc]
                                          initWithTarget:self action:@selector(swipedUp:)];
    swipeUp.direction = UISwipeGestureRecognizerDirectionUp;
    [self.myView addGestureRecognizer:swipeUp];
    
    UIRotationGestureRecognizer * rotate = [[UIRotationGestureRecognizer
                                             alloc] initWithTarget:self action:@selector(rotating:)];
    [self.myView addGestureRecognizer:rotate];
    
    UIPanGestureRecognizer * pan = [[UIPanGestureRecognizer alloc]
                                    initWithTarget:self action:@selector(panning:)];
    [pan setMaximumNumberOfTouches:2];
    [pan setMinimumNumberOfTouches:2];
    
    [self.myView addGestureRecognizer:pan];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void) tapped:(UIGestureRecognizer *) sender
{
    self.myView.backgroundColor = [UIColor redColor];
}

-(void) longPressed:(UIGestureRecognizer *) sender
{
    self.myView.backgroundColor = [UIColor blackColor];
}

-(void) pinching:(UIPinchGestureRecognizer *) sender
{
    CGAffineTransform theTransformation =
    CGAffineTransformMakeScale(sender.scale, sender.scale);
    sender.view.transform = theTransformation;
}

-(void) swipedUp:(UISwipeGestureRecognizer *) sender
{
    self.myView.backgroundColor = [UIColor orangeColor];
}

-(void) rotating:(UIRotationGestureRecognizer *) sender
{
    CGAffineTransform theTransformation =
    CGAffineTransformMakeRotation(sender.rotation);
    sender.view.transform = theTransformation;
}

- (void) panning:(UIPanGestureRecognizer *) sender
{
    CGPoint newPoint = [sender translationInView:sender.view];
    [sender setTranslation:CGPointZero inView:sender.view];
    self.myView.center = CGPointMake(self.myView.center.x + newPoint.x,self.myView.center.y + newPoint.y);
}

@end
