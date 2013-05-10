//
//  main.m
//  People
//
//  Created by mo khan on 2013-05-07.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "Human.m"

int main(int argc, const char * argv[])
{

    @autoreleasepool {

        // insert code here...
        Person * person = [[Person alloc] init];
        [person setFirstName:@"Mo"];
        [person setLastName:@"Khan"];
        NSLog(@"Hello, World! %@ %@", person.firstName, person.lastName);
        NSLog(@"%@", [person putFirstAndLastTogether:person.firstName]);
        NSLog(@"%@", [person theTruth]);
        NSLog(@"%@", [person tellMeSomethingIDontKnow]);
        [person change:@"Mo" last_name:@"Ka" age:29];
        NSLog(@"%@", [person tellMeSomethingIDontKnow]);


        Human * human = [Human new];
        [human setName:@"mo"];
        NSLog(@"%@", [human name]);
        NSLog(@"%@", [human sayHello]);
    }
    return 0;
}

