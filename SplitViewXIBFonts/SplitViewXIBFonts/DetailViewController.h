//
//  DetailViewController.h
//  SplitViewXIBFonts
//
//  Created by mo khan on 2013-05-28.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DetailViewController : UIViewController <UISplitViewControllerDelegate>

@property (strong, nonatomic) id detailItem;

@property (weak, nonatomic) IBOutlet UILabel *detailDescriptionLabel;
@end
