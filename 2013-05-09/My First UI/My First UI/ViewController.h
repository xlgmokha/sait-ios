//
//  ViewController.h
//  My First UI
//
//  Created by mo khan on 2013-05-09.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Data.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *firstLabel;
@property (strong, nonatomic) Data * myData;
- (IBAction)firstButton:(id)sender;
@end
