//
//  DockController.m
//  新浪微博
//
//  Created by  on 14-9-7.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "DockController.h"

#define kDockHeight 44

@implementation DockController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}




- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // 1.添加Dock
    [self addDock];
    
}


-(void)addDock
{
    //添加Dock
    Dock *dock = [[Dock alloc] init];
    dock.frame = CGRectMake(0, self.view.frame.size.height - kDockHeight, self.view.frame.size.width, kDockHeight);
    dock.delegate = self;
    _dock = dock;
    [self.view addSubview:dock];
    
}

#pragma mark - Dock代理方法
-(void)Dock:(Dock *)dock itemSelectedFrom:(int)fromIndex to:(int)toIndex
{
    
    //提示：self.childViewControllers并不为空，因为添加控制器的工作会在子类中完成
    
    //移除旧视图控制器
    UIViewController *oldVc = [self.childViewControllers objectAtIndex:fromIndex];
    [oldVc.view removeFromSuperview];
    
    //添加新的视图控制器
    UIViewController *newVc = [self.childViewControllers objectAtIndex:toIndex];
    newVc.view.frame = CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height - kDockHeight);
    [self.view addSubview:newVc.view];
    
}


@end
