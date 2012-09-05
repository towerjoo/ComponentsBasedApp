//
//  FeedsManager.h
//  ComponentsBasedApp
//
//  Created by zhang laibin on 12-9-6.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kFeedsFileName @"feeds"
@interface FeedsManager : NSObject
{
    NSArray *feeds;
}
@property (nonatomic, retain) NSArray *feeds;


+(FeedsManager *)sharedManager;
-(NSArray *)getFeedsTitleList;
-(NSDictionary *)getFeedDetailByID:(NSString *)feedID;

@end
