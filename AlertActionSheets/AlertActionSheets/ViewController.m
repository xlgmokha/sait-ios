//
//  ViewController.m
//  AlertActionSheets
//
//  Created by mo khan on 2013-05-21.
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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(IBAction)showAlert:(id)sender
{
    UIAlertView * myAlert = [[UIAlertView alloc] initWithTitle:@"blah" message:@"blah" delegate:self cancelButtonTitle:@"Cancel" otherButtonTitles:@"Done", nil];
    [myAlert show];
}

-(void) alertView:(UIAlertView *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if(buttonIndex == 1)
    {
        NSLog(@"Done button pressed");
    }
}

-(IBAction)showActionSheet:(id)sender
{
    UIActionSheet * myActionSheet = [[UIActionSheet alloc] initWithTitle:@"this is an action sheet" delegate:self cancelButtonTitle:@"Cancel" destructiveButtonTitle:@"Delete" otherButtonTitles:@"Done", @"Ready", nil];
    [myActionSheet showInView:self.view];
}

-(void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    switch (buttonIndex) {
        case 0:
            NSLog(@"Deleted");
            break;
            
        case 1:
            NSLog(@"Done");
            break;
        case 2:
            NSLog(@"Ready");
            break;
            
        case 3:
            NSLog(@"Cancelled");
            break;
            
        default:
            break;
    }
}

@end
