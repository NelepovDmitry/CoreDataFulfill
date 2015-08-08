//
//  Session.m
//  TestFulfill
//
//  Created by Dmitry Nelepov on 08.08.15.
//  Copyright (c) 2015 Nelepov DS. All rights reserved.
//

#import "Session.h"

@implementation Session

static Session *_instance = nil;

+ (instancetype)session {
    static dispatch_once_t pred;        // Lock
    dispatch_once(&pred, ^{             // This code is called at most once per app
        _instance = [[self alloc] init];
    });
    
    return _instance;
}

@end
