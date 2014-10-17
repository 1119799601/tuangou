//
//  CHImageView.m
//  DZ团购
//
//  Created by  on 14-10-15.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "CHImageView.h"
#import <QuartzCore/QuartzCore.h>

@implementation CHImageView
{
    CGPoint startPoint;
    CGPoint centerPoint;
    
    NSTimer *_timer;
    
    float didRotate;
    float time;
}


-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        centerPoint = CGPointMake(frame.origin.x + frame.size.width/2.0,frame.origin.y + frame.size.height/2.0);
         
    }
    
    return self;
}


-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    
    UITouch *touch = [touches anyObject];
    startPoint = [touch locationInView:self.superview];
      
    
    time = 0.0;
    didRotate = 0.0;
    
//    _timer = [NSTimer timerWithTimeInterval:0.02 target:self selector:@selector(timeGo) userInfo:nil repeats:YES];
    
    
    NSLog(@"began");
}

-(void)touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event
{ 
    UITouch *touch = [touches anyObject];
    CGPoint point = [touch locationInView:self.superview];
    
    float k1,k2;
    
    //起点和原点的斜率
    if (startPoint.x == centerPoint.x)
    {
        k1 = 10000;
    }
    else
    {
        k1 = (startPoint.y - centerPoint.y)/(startPoint.x - centerPoint.x);
    }

    if (point.x == centerPoint.x)
    {
        k2 = 10000;
    }
    else
    { 
        k2 = (point.y - centerPoint.y)/(point.x - centerPoint.x);
    }
    
    //当前点和原点的斜率 
    float tanx = (k1 - k2)/(1 + k1*k2);

    float angel = -atanf(tanx);
        
    NSLog(@"angel = %f",angel);
        
    self.transform = CGAffineTransformRotate(self.transform, angel); 
    
//    didRotate += angel;
    
    startPoint = point;

}

-(void)touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event
{  
//    [_timer invalidate];
    
    CABasicAnimation *action = [CABasicAnimation animationWithKeyPath:@"transform.rotation"];
    [action setToValue:[NSNumber numberWithFloat:10*M_PI]];
    [action setDuration:5];
    [action setTimingFunction:[CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseOut]];
    action.removedOnCompletion = NO;
    action.fillMode = kCAFillModeForwards;
    [self.layer addAnimation:action forKey:nil];
    
    NSLog(@"end");
}


-(void)timeGo
{
    time += 0.02;
}


-(void)newThread
{
    
}


@end
