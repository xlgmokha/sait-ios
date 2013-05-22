//
//  ViewController.h
//  Controls
//
//  Created by mo khan on 2013-05-14.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (strong, nonatomic) IBOutlet UILabel * myLabel;
@property (strong, nonatomic) IBOutlet UISegmentedControl * mySegmentedControl;
@property (strong, nonatomic) IBOutlet UITextField * myTextField;
@property (strong, nonatomic) IBOutlet UISlider * mySlider;
@property (strong, nonatomic) IBOutlet UILabel * mySliderLabel;
@property (strong, nonatomic) IBOutlet UISwitch * mySwitch;

-(IBAction)changeBackgroundColour:(id)sender;
-(IBAction)doSomething:(id)sender;
-(IBAction)scActions:(id)sender;
-(IBAction)sliderActions:(id)sender;
-(IBAction)switchActions:(id)sender;
@end
