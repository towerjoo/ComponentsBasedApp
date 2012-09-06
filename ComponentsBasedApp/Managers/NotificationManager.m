//
//  NotificationManager.m
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "NotificationManager.h"

@interface NotificationManager(Private)
-(void) publishNotification:(NSString *)noteName andObject:(id)obj andUserInfo:(NSDictionary *)userInfo;
-(void) observeNotification:(id)target andNoteName:(NSString *)noteName andhandle:(SEL)handler andObj:(id)obj;
@end

@implementation NotificationManager
static NotificationManager *sharedManager;

+(NotificationManager *)sharedManager{
    if (nil == sharedManager){
        sharedManager = [[ NotificationManager alloc] init];
        
    }
    return sharedManager;
}

-(void) publishNotification:(NSString *)noteName andObject:(id)obj andUserInfo:(NSDictionary *)userInfo{
    [[NSNotificationCenter defaultCenter] postNotificationName:noteName object:obj userInfo:userInfo];
}

-(void) observeNotification:(id)target andNoteName:(NSString *)noteName andhandle:(SEL)handler andObj:(id)obj{
    [[NSNotificationCenter defaultCenter] addObserver:target selector:handler name:noteName object:obj];
}

-(void) notePostClickBackBtn{
    [self publishNotification:kClickBackBtnEvent andObject:nil andUserInfo:nil];
}

-(void) noteObserveClickBackBtn:(id)obj andhandler:(SEL)handler{
    [self observeNotification:obj andNoteName:kClickBackBtnEvent andhandle:handler andObj:nil];
}

@end
