//
//  Car.h
//  MyGarage
//
//  Created by TRM on 7/15/15.
//  Copyright (c) 2015 MottApplications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Tire.h"

@interface Car : NSObject

@property (strong, nonatomic) NSString *model;
@property (strong, nonatomic) NSString *make;
@property (strong, nonatomic) NSString *year;
@property (strong, nonatomic) UIColor *color;
@property (strong, nonatomic) NSNumber *topSpeed;
@property (strong, nonatomic) NSString *condition;
@property (strong, nonatomic) NSNumber *numberOfDoors;
@property (assign, nonatomic) BOOL isConvertable;
@property (strong, nonatomic) Tire *tires;

- (instancetype)initWithDictionary:(NSDictionary *)dictionary;
- (NSDictionary *)carDictionary;

- (void)go;
- (void)stop;
- (void)honk;

@end
