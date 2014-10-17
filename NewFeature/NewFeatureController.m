//
//  NewFeatureController.m
//  DZ团购
//
//  Created by  on 14-10-16.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "NewFeatureController.h"

@implementation NewFeatureController
{
    UIScrollView *_scrollView;
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self)
    {
         
    }
    return self;
}

#pragma mark - View lifecycle
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
    _scrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    [_scrollView setContentSize:CGSizeMake(_scrollView.frame.size.width * 3, _scrollView.frame.size.height)];
    
    [self.view addSubview:_scrollView];
    
    for (int index = 0; index < 3; index++)
    {
        
        NSString *name = [NSString stringWithFormat:@"back_0%d.png",index+1];
        UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:name]];
        
        imageView.frame = CGRectMake(index * _scrollView.frame.size.width, 0, _scrollView.frame.size.width, _scrollView.frame.size.height);
        [_scrollView addSubview:imageView];
    }

 
}


@end
