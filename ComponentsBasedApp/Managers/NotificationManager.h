//
//  NotificationManager.h
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <Foundation/Foundation.h>
#define kClickBackBtnEvent @"kClickBackBtnEvent"

@interface NotificationManager : NSObject
+(NotificationManager *)sharedManager;

-(void) noteObserveClickBackBtn:(id)obj andhandler:(SEL)handler;
-(void) notePostClickBackBtn;


@end
