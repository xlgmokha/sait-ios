//
//  main.m
//  String
//
//  Created by mo khan on 2013-05-07.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        NSString * firstName;
        NSString * lastName;
        firstName = @"Kris";
        lastName = @"Hopkins";
        
        NSLog(@"My name is NOT %@ %@", firstName, lastName);
    }
    return 0;
}

