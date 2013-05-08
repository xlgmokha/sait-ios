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
    NSString * result = [[NSString alloc]initWithFormat:@"%@ %@", self.firstName, self.lastName];
    return result;
}
@end
