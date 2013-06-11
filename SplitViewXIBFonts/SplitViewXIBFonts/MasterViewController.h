//
//  MasterViewController.h
//  SplitViewXIBFonts
//
//  Created by mo khan on 2013-05-28.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DetailViewController;

@interface MasterViewController : UITableViewController

@property (strong, nonatomic) DetailViewController *detailViewController;
@property float fontSize;
@property (strong, nonatomic) NSArray * arrFontNames;
@property (strong, nonatomic) NSMutableArray * arrFontNamesIndex;
@property (strong, nonatomic) NSMutableArray * arrSections;
@end
