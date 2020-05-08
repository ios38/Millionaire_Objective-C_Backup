//
//  QuestionAndAnswers.h
//  Lesson_45_Networking_1
//
//  Created by Maksim Romanov on 08.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface QuestionAndAnswers : NSObject

@property (strong, nonatomic) NSString *question;
@property (strong, nonatomic) NSMutableArray *answers;

- (instancetype)initWithServerResponse:(NSDictionary*) responseObject;

@end

NS_ASSUME_NONNULL_END
