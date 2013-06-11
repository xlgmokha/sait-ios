//
//  ViewController.m
//  Modal
//
//  Created by mo khan on 2013-05-23.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "ViewController.h"
#import "ModalViewController.h"

@interface ViewController ()

@end

@implementation ViewController

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

-(IBAction)showModalView:(id)sender
{
    ModalViewController * myModalVC = [[ModalViewController alloc] initWithNibName:@"ModalViewController" bundle:nil];
    myModalVC.modalTransitionStyle = UIModalTransitionStylePartialCurl;
    [self presentViewController:myModalVC animated:YES completion:nil];
}

@end
