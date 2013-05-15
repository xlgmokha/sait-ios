//
//  main.m
//  People
//
//  Created by mo khan on 2013-05-07.
//  Copyright (c) 2013 mo khan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
#import "domain/Human.m"

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
        
        NSArray * firstNames = [[NSArray alloc] initWithObjects:@"hi", nil];
        NSArray * lastNames =  [[NSArray alloc] initWithObjects:@"hi", nil];
        NSArray * ages = [[NSArray alloc] initWithObjects:[NSNumber numberWithInt:25], [NSNumber numberWithInt:18], [NSNumber numberWithInt:32], [NSNumber numberWithInt:40], [NSNumber numberWithInt:62], nil];

        NSMutableArray *people = [[NSMutableArray alloc]init];
        Person *newGuy = [[Person alloc] init];

        for (int i = 0; i < [firstNames count]; i++) {
          newGuy.firstName = [firstNames objectAtIndex:i];
          newGuy.lastName = [lastNames objectAtIndex:i];
          newGuy.age = [[ages objectAtIndex:i] intValue];

          [people addObject:newGuy];
          NSLog(@"%@ %@ %d", [[people objectAtIndex:i] firstName], [[people objectAtIndex:i] lastName], [[people objectAtIndex:i] age]);
        }


        Human * human = [Human new];
        [human setName:@"mo"];
        NSLog(@"%@", [human name]);
        NSLog(@"%@", [human sayHello]);
    }
    return 0;
}

