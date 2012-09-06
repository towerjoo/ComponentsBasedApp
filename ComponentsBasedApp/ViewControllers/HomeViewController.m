//
//  HomeViewController.m
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HomeViewController.h"
#import "FeedsManager.h"
#import "FeedDetailViewController.h"

@implementation HomeViewController

-(void) viewDidLoad{
    [super viewDidLoad];
    [self setNavTitle:@"Home"];
//    NSLog(@"%@", self.headerView.userInteractionEnabled);
}

// MARK: table views delegates
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 1;
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return [[[FeedsManager sharedManager] getFeedsTitleList] count];
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"HomeFeedTableCell"];
    cell.textLabel.text = [[[FeedsManager sharedManager] getFeedsTitleList] objectAtIndex:indexPath.row];
    return cell;
}

-(void) tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    FeedDetailViewController *controller = [[FeedDetailViewController alloc] initWithNibName:@"FeedDetailViewController" bundle:nil];
    controller.feedID = indexPath.row;
    [self.navigationController pushViewController:controller animated:YES];
}

@end
