//
//  ProfileViewController.m
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "FeedDetailViewController.h"
#import "FeedsManager.h"

@implementation FeedDetailViewController
@synthesize feedID;
@synthesize feedTitle, feedContent;


#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    [self setNavTitle:@"Feed Detail"];
    NSDictionary *feedData = [[FeedsManager sharedManager] getFeedDetailByID:self.feedID];
    self.feedTitle.text = [feedData objectForKey:@"title"];
    self.feedContent.text = [feedData objectForKey:@"detail"];
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
