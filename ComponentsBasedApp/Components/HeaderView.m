//
//  HeaderView.m
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "HeaderView.h"
#import "NotificationManager.h"

@implementation HeaderView
@synthesize backBtn, navTitle;


-(IBAction)onClickBackBtn:(id)sender{
    [[NotificationManager sharedManager] notePostClickBackBtn];
}

-(IBAction)onClickSearchBtn:(id)sender{
    
}

-(void) initWhenviewDidLoad{
    NSLog(@"I'm loaded");
}

-(void) initWhenViewDidAppear{
    
}

@end
