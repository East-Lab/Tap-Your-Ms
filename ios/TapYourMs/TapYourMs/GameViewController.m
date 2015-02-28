//
//  GameViewController.m
//  TapYourMs
//
//  Created by 川島 大地 on 2015/02/28.
//  Copyright (c) 2015年 川島 大地. All rights reserved.
//

#import "GameViewController.h"
#import "MainScene.h"

@interface GameViewController ()

@property (nonatomic, strong) MainScene *mainScene;

@end

@implementation GameViewController

@synthesize score;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad{
    [super viewDidLoad];

    // Do any additional setup after loading the view.
    NSLog(@"sprite kit game");
    
    // Configure the view.
    _skView = (SKView *)self.view;
    _skView.showsFPS = NO;
    _skView.showsNodeCount = NO;
    
    // Create and confijgure the scene.
    self.mainScene = [MainScene sceneWithSize:_skView.bounds.size];
    
    // Present the scene.
    self.mainScene.scaleMode = SKSceneScaleModeAspectFill;
    [_skView presentScene:self.mainScene];
    
    [self.navigationController setNavigationBarHidden:YES animated:NO];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
