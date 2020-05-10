//
//  Game.m
//  Millionaire
//
//  Created by Maksim Romanov on 09.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "Game.h"

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

- (void)endGameWithResult:(NSUInteger)result {
    NSLog(@"Game: endGameWithResult: %lu",(unsigned long)result);
    self.gameSession = nil;
}

@end
