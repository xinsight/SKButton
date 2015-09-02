//
//  NodeButton.m
//  SpriteKitTest
//
//  Created by Jay Moore on 2015-09-01.
//  Copyright (c) 2015 Jason Moore. All rights reserved.
//

#import "NodeButton.h"

@interface NodeButton()
@property (nonatomic, strong) SKLabelNode *label;
@property (nonatomic, assign) SEL action;
@property (nonatomic, weak) id target;
@end

@implementation NodeButton

+(instancetype) node;
{
    NodeButton *node = [super node];
    
    SKLabelNode *label = [SKLabelNode labelNodeWithText:@"Button"];
    [node addChild:label];
    node.label = label;
    
    node.userInteractionEnabled = YES;
    node.selectedLabelColor = [SKColor orangeColor];
    node.labelColor = [SKColor whiteColor];
    
    return node;
}

- (void) addTarget:(id)target action:(SEL)action;
{
    self.target = target;
    self.action = action;
}

- (void) setText:(NSString*)text;
{
    self.label.text = text;
}

- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event;
{
    [self setHighlight:YES];
}

- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event;
{
    if (self.target == nil) {
        NSLog(@"%s: Warning: no target", __PRETTY_FUNCTION__);
    }
    
    [self.target performSelector:self.action withObject:nil afterDelay:0];
    
    [self setHighlight:NO];
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event;
{
    [self setHighlight:NO];
}

- (void) setHighlight:(BOOL)highlight;
{
    if (highlight) {
        self.label.fontColor = self.selectedLabelColor;
    } else {
        self.label.fontColor = self.labelColor;
    }
}

@end
