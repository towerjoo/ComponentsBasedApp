//
//  HeaderView.h
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "IBView.h"
@interface HeaderView : IBView
{
    UIButton *backBtn;
    UILabel *navTitle;
}

@property (nonatomic, retain) IBOutlet UIButton *backBtn;
@property (nonatomic, retain) IBOutlet UILabel *navTitle;

-(IBAction)onClickBackBtn:(id)sender;
-(IBAction)onClickSearchBtn:(id)sender;

@end
