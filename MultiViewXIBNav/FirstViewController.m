//
//  FirstViewController.m
//  MultiViewXIBNav
//
//  Created by mo khan on 2013-05-21.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        self.title = @"First";
    }
    UIBarButtonItem * secondButton = [[UIBarButtonItem alloc] initWithTitle:@"Second" style:UIBarButtonItemStylePlain target:self action:@selector(gotoSecondView:)];
    self.navigationItem.rightBarButtonItem = secondButton;
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) gotoSecondView:(id)sender
{
    NSLog(@"Second button works");
    if (!self.mySecondVC)
    {
        self.mySecondVC = [[SecondViewController alloc] initWithNibName:@"SecondViewController" bundle:nil];
    }
    
    [self.navigationController pushViewController:self.mySecondVC animated:YES];
}

@end
