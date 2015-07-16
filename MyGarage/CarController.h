//
//  CarController.h
//  MyGarage
//
//  Created by TRM on 7/15/15.
//  Copyright (c) 2015 MottApplications. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Car.h"

@interface CarController : NSObject

+ (CarController *)sharedInstance;

//Create
- (Car *)createCar;

//Retrieve
@property (strong, nonatomic) NSArray *cars;

//Update
//POINTERS!!!!

//Delete
- (void)deleteCar:(Car *)car;

//Save Methods
- (void)savesToDefaults;
- (void)loadsToDefaults;


@end
