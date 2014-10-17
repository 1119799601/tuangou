//
//  MainViewController.m
//  DZ团购
//
//  Created by  on 14-10-13.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "MainViewController.h"
#import "CHImageView.h"
#import "KTOneFingerRotationGestureRecognizer.h"
#import <QuartzCore/QuartzCore.h>

@implementation MainViewController
{
    CHImageView *_imageView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _imageView = [[CHImageView alloc] initWithFrame:CGRectMake(80, 70, 160, 240)];
    _imageView.image = [UIImage imageNamed:@"back_01.png"];
    _imageView.userInteractionEnabled = YES;
    [self.view addSubview:_imageView];
    
     
    
//    UIPanGestureRecognizer *pansGesture = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePans:)];
//    [pansGesture setMaximumNumberOfTouches:1];
//    
//    [_imageView addGestureRecognizer:pansGesture];
    
    
//    KTOneFingerRotationGestureRecognizer *rotate = [[KTOneFingerRotationGestureRecognizer alloc] initWithTarget:self action:@selector(rotateAction:)];
//    [_imageView addGestureRecognizer:rotate];
    
}


-(void)rotateAction:(KTOneFingerRotationGestureRecognizer*)rotate
{
//    NSLog(@"rotateAction");
    
    UIImageView *imageView = (UIImageView*)rotate.view;
    
    imageView.transform = CGAffineTransformRotate(imageView.transform, rotate.rotation);
    
}

- (void)handlePans:(UIPanGestureRecognizer *)sender
{
    CGPoint translationPoint = [sender velocityInView:self.view];
    _imageView.transform = CGAffineTransformMakeRotation(sender.view.center.x+translationPoint.x);
}


@end
