//
//  GameScene.m
//  SpriteKitTest
//
//  Created by Jay Moore on 2015-09-01.
//  Copyright (c) 2015 Jason Moore. All rights reserved.
//

#import "GameScene.h"
#import "NodeButton.h"

@implementation GameScene

-(void)didMoveToView:(SKView *)view {
    
    NodeButton *button1 = [NodeButton node];
    button1.text = @"EAT";
    [button1 addTarget:self action:@selector(doEat:)];
    button1.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame));
    [self addChild:button1];

    NodeButton *button2 = [NodeButton node];
    button2.text = @"SLEEP";
    [button2 addTarget:self action:@selector(doSleep:)];
    button2.position = CGPointMake(CGRectGetMidX(self.frame), CGRectGetMidY(self.frame)+100);
    [self addChild:button2];
    
}

- (void) doEat:(id)sender;
{
    NSLog(@"EAT");
}

- (void) doSleep:(id)sender;
{
    NSLog(@"SLEEP");
}


//-(void)update:(CFTimeInterval)currentTime {
//    /* Called before each frame is rendered */
//}

@end
