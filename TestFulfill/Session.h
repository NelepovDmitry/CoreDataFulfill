//
//  Session.h
//  TestFulfill
//
//  Created by Dmitry Nelepov on 08.08.15.
//  Copyright (c) 2015 Nelepov DS. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "User.h"

@interface Session : NSObject

+ (instancetype)session;

@property (nonatomic) User *user;

@end
