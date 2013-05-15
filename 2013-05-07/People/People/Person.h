//
//  Person.h
//  People
//
//  Created by mo khan on 2013-05-07.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
@property (strong, nonatomic) NSString * firstName;
@property (strong, nonatomic) NSString * lastName;
@property int age;
-(NSString *)putFirstAndLastTogether:(NSString *)first;
-(NSString *)fullName;
-(NSString *)theTruth;
-(NSString *)tellMeSomethingIDontKnow;
-(void)change:(NSString *)first_name last_name:(NSString *)last age:(int)the_age;
@end
