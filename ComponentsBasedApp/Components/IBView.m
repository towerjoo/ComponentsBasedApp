//
//  IBView.m
//  ComponentsBasedApp
//
//  Created by Zhu Tao on 9/3/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "IBView.h"

@implementation IBView

-(void) loadViewFromBundle{
    NSString *class_name = NSStringFromClass([self class]);
    NSLog(@"Loading Bundle:%@", class_name);
    UIView *mainSubView = [[[NSBundle mainBundle] loadNibNamed:class_name owner:self options:nil] lastObject];
    [self addSubview:mainSubView];  // 所以其实是在component和被嵌入的view中还有一层,当然并没有什么作用
}

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self loadViewFromBundle];
    }
    return self;
}


-(id) initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self){
        [self loadViewFromBundle];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

// need override in child class
-(void) initWhenviewDidLoad{
    
}

-(void) initWhenViewDidAppear{
    
}

@end
