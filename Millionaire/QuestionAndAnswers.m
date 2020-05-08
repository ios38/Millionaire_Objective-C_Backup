//
//  QuestionAndAnswers.m
//  Lesson_45_Networking_1
//
//  Created by Maksim Romanov on 08.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "QuestionAndAnswers.h"

@implementation QuestionAndAnswers

- (instancetype)initWithServerResponse:(NSDictionary*) responseObject {
    self = [super init];
    if (self) {
        self.question = [responseObject objectForKey:@"question"];
        self.answers = [responseObject objectForKey:@"answers"];
    }
    return self;
}

@end
