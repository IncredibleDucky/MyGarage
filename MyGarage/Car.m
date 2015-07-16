//
//  Car.m
//  MyGarage
//
//  Created by TRM on 7/15/15.
//  Copyright (c) 2015 MottApplications. All rights reserved.
//

#import "Car.h"

static const NSString *modelKey = @"modelKey";
static const NSString *makeKey = @"makeKey";
static const NSString *yearKey = @"yearKey";
static const NSString *topSpeedKey = @"topSpeedKey";
static const NSString *conditionKey = @"conditionKey";
static const NSString *numberOfDoorsKey = @"numberOfDoorsKey";
static const NSString *isConvertableKey = @"isConvertableKey";

@implementation Car

- (void)go {
    NSLog(@"The %@ goes \"Vroom! Vroom!\"", self);
}

- (void)stop {
    NSLog(@"The %@ goes \"Errrrrr!\"", self);
}

- (void)honk {
    NSLog(@"The %@ goes \"Beep! Beep!\"", self);
}

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@ %@", self.year, self.make, self.model];
}

- (instancetype)initWithDictionary:(NSDictionary *)dictionary {
    self = [super init];
    
    if(self) {
        self.model = dictionary[modelKey];
        self.make = dictionary[makeKey];
        self.year = dictionary[yearKey];
        self.topSpeed = dictionary[topSpeedKey];
        self.condition = dictionary[conditionKey];
        self.numberOfDoors = dictionary[numberOfDoorsKey];
        NSNumber *isConvertableNumber = dictionary[isConvertableKey];
        if([isConvertableNumber isEqualToNumber: @1]) {
            self.isConvertable = YES;
        } else {
            self.isConvertable = NO;
        }
    
    }
    
    return self;
}

- (NSDictionary *)carDictionary {
    NSMutableDictionary *dictionary = [NSMutableDictionary new];
    if(self.model) {
        [dictionary setObject:self.model forKey:modelKey];
    }
    if(self.make) {
        [dictionary setObject:self.make forKey:makeKey];
    }
    if(self.year) {
        [dictionary setObject:self.year forKey:yearKey];
    }
    if(self.topSpeed) {
        [dictionary setObject:self.topSpeed forKey:topSpeedKey];

    }
    if(self.condition) {
        [dictionary setObject:self.condition forKey:conditionKey];

    }
    if(self.numberOfDoors) {
        [dictionary setObject:self.numberOfDoors forKey:numberOfDoorsKey];

    }
   
    if(self.isConvertable) {
        [dictionary setObject:@1 forKey:isConvertableKey];
    }
    else {
        [dictionary setObject:@0 forKey:isConvertableKey];
    }
    
    return dictionary;
}

@end
