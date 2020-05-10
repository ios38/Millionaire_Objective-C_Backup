//
//  ResultsCaretaker.m
//  Millionaire
//
//  Created by Maksim Romanov on 10.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "ResultsCaretaker.h"
#import "Game.h"
#import "GameSettings.h"

@implementation ResultsCaretaker

NSString *directory() {
    return [[NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject] stringByAppendingString:@"/GameResults.txt"];
}

-(void) saveResults:(NSMutableArray *)gameResults {
    NSLog(@"ResultsCaretaker: saveResults");

    GameSettings *gameSettings = [[GameSettings alloc] init];
    gameSettings.gameResults = gameResults;
    
    NSError *error;
    NSData *data = [NSKeyedArchiver archivedDataWithRootObject:gameSettings requiringSecureCoding:NO error:&error];
    if (error) {
        NSLog(@"%@",error);
    }
    [data writeToFile: directory() atomically:YES];
    NSLog(@"gameResults saved!");
}

-(void) loadResults {
    NSLog(@"ResultsCaretaker: loadResults");
    
    NSData *data = [NSData dataWithContentsOfFile: directory()];
    NSError *error;
    GameSettings *gameSettings = [NSKeyedUnarchiver unarchivedObjectOfClass:[GameSettings class] fromData:data error:&error];
    if (error) {
        NSLog(@"%@",error);
    } else {
        Game.shared.gameResults = gameSettings.gameResults;
        NSLog(@"gameResults loaded!");
    }
}

@end
