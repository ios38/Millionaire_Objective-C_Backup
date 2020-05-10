//
//  ResultsController.m
//  Millionaire
//
//  Created by Maksim Romanov on 09.05.2020.
//  Copyright © 2020 Maksim Romanov. All rights reserved.
//

#import "ResultsController.h"

@interface ResultsController ()

- (IBAction)backButton:(id)sender;



@end

@implementation ResultsController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (IBAction)backButton:(id)sender {

    [self dismissViewControllerAnimated:NO completion:nil];
}

@end
