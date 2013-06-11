//
//  ViewController.h
//  Accelerometer
//
//  Created by mo khan on 2013-06-10.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAccelerometerDelegate>
@property (strong, nonatomic) IBOutlet UIView * myView;
@end
