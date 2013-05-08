//
//  main.m
//  People
//
//  Created by mo khan on 2013-05-07.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        // insert code here...
        Person * newPerson = [[Person alloc] init];
        [newPerson setFirstName:@"Mo"];
        [newPerson setLastName:@"Khan"];
        NSLog(@"Hello, World! %@ %@", newPerson.firstName, newPerson.lastName);
        NSLog(@"%@", [newPerson putFirstAndLastTogether:newPerson.firstName]);
        NSLog(@"%@", [newPerson fullName]);
    }
    return 0;
}

