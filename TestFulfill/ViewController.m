//
//  ViewController.m
//  TestFulfill
//
//  Created by Dmitry Nelepov on 08.08.15.
//  Copyright (c) 2015 Nelepov DS. All rights reserved.
//

#import "ViewController.h"
#import "FWViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.app = [UIApplication sharedApplication].delegate;
    NSLog(@"User:%@ name %@", [Session session].user, [Session session].user.name);
    NSAssert(![Session session].user.isFault, @"Yes we here");
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)showNextAction:(UIButton *)sender {
    FWViewController *vc = [[FWViewController alloc] init];
    [self presentViewController:[[UINavigationController alloc] initWithRootViewController:vc] animated:YES completion:nil];
}

@end
