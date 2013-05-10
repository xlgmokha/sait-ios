//
//  Person.m
//  People
//
//  Created by mo khan on 2013-05-07.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import "Person.h"

@implementation Person
-(NSString *)putFirstAndLastTogether:(NSString *)first
{
    NSString * wholeName = [[first stringByAppendingString:@" "] stringByAppendingString:self.lastName];
    return wholeName;
}

-(NSString *)fullName
{
    return [[NSString alloc]initWithFormat:@"%@ %@", self.firstName, self.lastName];
}

-(NSString *)theTruth
{
    return [[NSString alloc]initWithFormat:@"%@ is the boss!", self.fullName];
}

-(NSString *)tellMeSomethingIDontKnow
{
  return [[NSString alloc] initWithFormat:@"%@ You betta aks somebody!", self.theTruth];
}

-(void)change:(NSString *)first_name last_name:(NSString *)last age:(int)the_age
{
  [self setFirstName:first_name];
  [self setLastName:last];
}
@end
