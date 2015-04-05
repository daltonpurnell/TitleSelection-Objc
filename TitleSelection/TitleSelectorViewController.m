//
//  TitleSelectorViewController.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "TitleSelectorViewController.h"
#import "TitleTableViewDataSource.h"
#import "TitleDetailViewController.h"

@interface TitleSelectorViewController () <UITableViewDelegate>


@property (nonatomic, strong) UITableView *tableView;
@property (nonatomic, strong) TitleTableViewDataSource *dataSource;

@end

@implementation TitleSelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.dataSource = [TitleTableViewDataSource new];
    

    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    self.tableView.dataSource = self.dataSource;
    
    // The tableview that lives ont his view controller can use this view controller to find methods
    self.tableView.delegate = self;
    [self.view addSubview:self.tableView];
    
}


-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    
    // this method passed in an index path, so we just put indexPath for when it deselects
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    // instantiate new instance of TitleDetailViewController
    TitleDetailViewController *detailViewController = [TitleDetailViewController new];
    
    detailViewController.index = indexPath.row;
    
    // push detail view controller
    [self.navigationController pushViewController:detailViewController animated:YES];
    
    
}

@end










