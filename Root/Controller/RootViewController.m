//
//  RootViewController.m
//  DZ团购
//
//  Created by  on 14-10-16.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "RootViewController.h"
#import "MainViewController.h"

@implementation RootViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
       
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //添加子控制器
    
    MainViewController *mainCtrl = [[MainViewController alloc] init];
    UINavigationController *nav1 = [[UINavigationController alloc] initWithRootViewController:mainCtrl];
    [self addChildViewController:nav1];
    
    MainViewController *mainCtrl2 = [[MainViewController alloc] init];
    [self addChildViewController:mainCtrl2];
    
    MainViewController *mainCtrl3 = [[MainViewController alloc] init];
    [self addChildViewController:mainCtrl3];
    
    
    MainViewController *mainCtrl4 = [[MainViewController alloc] init];
    [self addChildViewController:mainCtrl4];
    
    
    
//    //添加标签栏
    [_dock addItemWithIcon:@"main_index_home.png" title:@"首页"];
    [_dock addItemWithIcon:@"main_index_tuan.png" title:@"团购"];
    [_dock addItemWithIcon:@"main_index_search.png" title:@"发现"];
    [_dock addItemWithIcon:@"main_index_my.png" title:@"我的"];
    
    

}

@end
