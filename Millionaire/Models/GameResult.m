//
//  GameResult.m
//  Millionaire
//
//  Created by Maksim Romanov on 10.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "GameResult.h"

@implementation GameResult


+ (BOOL)supportsSecureCoding {
    return YES;
}

- (instancetype)initWithDate:(NSDate *)date andResult:(NSUInteger)result {
    self = [super init];
    if (self) {
        self.date = date;
        self.result = [NSNumber numberWithUnsignedInteger:result];
    }
    return self;
}

- (void)encodeWithCoder:(nonnull NSCoder *)coder {
    [coder encodeObject:self.date forKey:@"date"];
    [coder encodeObject:self.result forKey:@"date"];
}

- (id)initWithCoder:(NSCoder *)coder {
    if ((self = [super init])) {
        self.date = [coder decodeObjectOfClass:[NSDate class] forKey:@"date"];
        self.result = [coder decodeObjectOfClass:[NSNumber class] forKey:@"result"];
    }
    return self;
}

@end
