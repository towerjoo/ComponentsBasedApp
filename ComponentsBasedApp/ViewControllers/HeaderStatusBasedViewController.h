//
//  HeaderStatusBasedViewController.h
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Components.h"
@interface HeaderStatusBasedViewController : UIViewController
{
    HeaderView *headerView;
}
@property (nonatomic, retain) IBOutlet HeaderView *headerView;
-(void) setNavTitle:(NSString *)title;
@end
