//
//  NodeButton.h
//  SpriteKitTest
//
//  Created by Jay Moore on 2015-09-01.
//  Copyright (c) 2015 Jason Moore. All rights reserved.
//

#import <SpriteKit/SpriteKit.h>

@interface NodeButton : SKNode

@property (nonatomic, strong) SKColor *labelColor;
@property (nonatomic, strong) SKColor *selectedLabelColor;

- (void) addTarget:(id)target action:(SEL)action;

- (void) setText:(NSString*)text;

@end
