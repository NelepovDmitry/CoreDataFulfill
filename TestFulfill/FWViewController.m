//
//  FWViewController.m
//  TestFulfill
//
//  Created by Dmitry Nelepov on 08.08.15.
//  Copyright (c) 2015 Nelepov DS. All rights reserved.
//

#import "FWViewController.h"

static NSInteger count = 0;

@interface FWViewController ()

@property (atomic) NSInteger timeOut;
@property (nonatomic) User *user;

@end

@implementation FWViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    __weak typeof(self) wSelf = self;
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(1 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [wSelf.app.managedObjectContext deleteObject:[Session session].user];
        [wSelf.app.managedObjectContext save:nil];
    });
    
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = [NSString stringWithFormat:@"Run %@", @(count)];
    count ++;
}

- (void)dealloc {
    NSLog(@"IM DIE %@", self.user.name);
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    if (count == 200) {
        [self dismissViewControllerAnimated:YES completion:nil];
    } else {
        [self performSelector:@selector(showNext) withObject:nil afterDelay:0.5];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];

}


- (void)showNext {
    FWViewController *vc = [FWViewController new];
    [self.navigationController pushViewController:vc animated:NO];
}

@end
