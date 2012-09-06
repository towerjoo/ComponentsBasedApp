//
//  ProfileViewController.h
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "HeaderStatusBasedViewController.h"

@interface FeedDetailViewController : HeaderStatusBasedViewController
{
    int feedID;
    UILabel *feedTitle;
    UITextView *feedContent;
}
@property (nonatomic) int feedID;
@property (nonatomic, retain) IBOutlet UILabel *feedTitle;
@property (nonatomic, retain) IBOutlet UITextView *feedContent;
@end
