//
//  TitleDetailViewController.m
//  TitleSelection
//
//  Created by User on 4/4/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "TitleDetailViewController.h"
#import "TitleTableViewDataSource.h"
@interface TitleDetailViewController ()

@end

@implementation TitleDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UILabel *label = [UILabel new];
    label.frame = self.view.bounds;
    label.text =[TitleTableViewDataSource new].titles[self.index];
    
    [self.view addSubview:label];
    
}


@end
