//
//  MainScene.m
//  TapYourMs
//
//  Created by 川島 大地 on 2015/02/28.
//  Copyright (c) 2015年 川島 大地. All rights reserved.
//

#import "MainScene.h"


@implementation MainScene

@synthesize titleLabel;

-(id)initWithSize:(CGSize)size {
    if (self = [super initWithSize:size]) {
        self.backgroundColor = [SKColor colorWithRed:0.85 green:0.45 blue:0.3 alpha:1.0];
        
        titleLabel = [SKLabelNode labelNodeWithFontNamed:@"Chalkduster"];
        titleLabel.text = @"COUNT:0";
        titleLabel.fontSize = 30;
        titleLabel.position = CGPointMake(CGRectGetMidX(self.frame),
                                          CGRectGetMidY(self.frame));
        
        [self addChild:titleLabel];
        NSLog(@"init");
    }
    return self;
}

- (UINavigationController *)navController{
    UIView *v = (UIView *)self.nextResponder;
    if ([v.nextResponder isKindOfClass:[UINavigationController class]])
        return (UINavigationController *)v.nextResponder;
    else
        return nil;
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.count++;
    NSLog(@"count:%d",self.count);
}

- (void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event{
    NSLog(@"touch end");
}

-(void)update:(CFTimeInterval)currentTime {
    titleLabel.text = [NSString stringWithFormat:@"COUNT:%d",self.count];
}

@end
