//
//  FeedsManager.m
//  ComponentsBasedApp
//
//  Created by zhang laibin on 12-9-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "FeedsManager.h"

@implementation FeedsManager
@synthesize feeds;

static FeedsManager *sharedManager;

-(void) initManager{
    NSString *path = [[NSBundle mainBundle] pathForResource:kFeedsFileName ofType:@"plist"];
    self.feeds = [NSArray arrayWithContentsOfFile:path];
}

+(FeedsManager *)sharedManager{
    if (nil == sharedManager){
        sharedManager = [[FeedsManager alloc] init];
        [sharedManager initManager];
    }
    return sharedManager;
}

-(NSDictionary

@end
