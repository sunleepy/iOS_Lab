//
//  FillLabel.m
//  Sample
//
//  Created by sunleepy on 12-10-19.
//  Copyright (c) 2012年 sunleepy. All rights reserved.
//

#import "FillLabel.h"

#define MAX_SIZE_HEIGHT 10000
#define DEFAULT_BACKGROUDCOLOR [UIColor colorWithRed:47.0/255 green:157.0/255 blue:216.0/255 alpha:1]
#define DEFAULT_TEXTCOLOR [UIColor whiteColor]
#define DEFAULT_FONT [UIFont boldSystemFontOfSize:10]
#define DEFAULT_TEXTALIGNMENT UITextAlignmentCenter
#define DEFAULT_RADIUS 5.0f

@implementation FillLabel

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {

        self.backgroundColor = DEFAULT_BACKGROUDCOLOR;
        self.textColor = DEFAULT_TEXTCOLOR;
        self.font = DEFAULT_FONT;
        self.textAlignment = DEFAULT_TEXTALIGNMENT;
        
        self.layer.masksToBounds = YES;
        self.layer.cornerRadius = DEFAULT_RADIUS;

    }
    return self;
}

-(void)setRadius:(CGFloat)radius
{
    self.layer.cornerRadius = radius;
}

-(void)setText:(NSString *)text
{
    super.text = text;
    
    CGSize size = [self.text sizeWithFont:self.font constrainedToSize:CGSizeMake(320, MAX_SIZE_HEIGHT) lineBreakMode:UILineBreakModeWordWrap];
    self.frame = CGRectMake(self.frame.origin.x, self.frame.origin.y, size.width + 8, size.height);
}

@end
