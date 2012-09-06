//
//  HeaderStatusBasedViewController.m
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HeaderStatusBasedViewController.h"
@interface HeaderStatusBasedViewController(Privae)
-(void) handleClickBackBtn;
@end

@implementation HeaderStatusBasedViewController
@synthesize headerView;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement loadView to create a view hierarchy programmatically, without using a nib.
- (void)loadView
{
}
*/


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    [[NotificationManager sharedManager] noteObserveClickBackBtn:self andhandler:@selector(handleClickBackBtn)];
    if ([self.navigationController.viewControllers count] == 1){
        headerView.backBtn.hidden = YES;
    }
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

// MARK: for child class to customize
-(void) setNavTitle:(NSString *)title{
    self.headerView.navTitle.text = title;
}

// MARK: private
-(void) handleClickBackBtn{
    if (self == self.navigationController.topViewController){
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
