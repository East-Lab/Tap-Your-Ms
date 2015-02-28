//
//  GameViewController.h
//  TapYourMs
//

//  Copyright (c) 2015年 川島 大地. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <SpriteKit/SpriteKit.h>
#import "MainScene.h"

@interface GameViewController : UIViewController

@property (nonatomic) int score;
@property (nonatomic,weak) SKView *skView;

@end
