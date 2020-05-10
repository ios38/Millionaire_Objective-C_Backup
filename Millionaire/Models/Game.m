//
//  Game.m
//  Millionaire
//
//  Created by Maksim Romanov on 09.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Game.h"
#import "GameResult.h"

//@interface Game()
//
//@property (strong,nonatomic) NSMutableArray *gameResults;
//
//@end

@implementation Game

+ (Game *) shared {
    
    static Game *game = nil;
    static dispatch_once_t onceToken;
    
    dispatch_once(&onceToken, ^{
        game = [[Game alloc] init];
        NSLog(@"Game created");

    });
    
    return game;
}

- (id)init {
    self = [super init];
    if (self) {
        self.gameResults = [NSMutableArray array];
    }
    return self;
}

- (void)endGameWithResult:(NSUInteger)result {
    NSLog(@"Game: endGameWithResult: %lu",(unsigned long)result);
    NSDate *date = [NSDate date];
    GameResult *gameResult = [[GameResult alloc] initWithDate:date andResult:result];
    [self.gameResults addObject:gameResult];
    self.gameSession = nil;
}

@end
