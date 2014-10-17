//
//  DockItem.m
//  新浪微博
//
//  Created by  on 14-9-5.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "DockItem.h"
#define kTitlePersent 0.4

@implementation DockItem

-(id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self)
    {
        //文字大小
        self.titleLabel.font = [UIFont systemFontOfSize:12];
        self.titleLabel.textAlignment = UITextAlignmentCenter;
        
        //图片显示模式
        self.imageView.contentMode = UIViewContentModeScaleAspectFit;
        
        //选中背景
        [self setBackgroundImage:[UIImage imageNamed:@"tabbar_slider.png"] forState:UIControlStateSelected];
        
        //关闭点击按钮时调整图片
        self.adjustsImageWhenHighlighted = NO;
    }
    
    return self;
}


#pragma mark - 自定义imageView的大小
-(CGRect)imageRectForContentRect:(CGRect)contentRect
{
    CGFloat imageX = 0;
    CGFloat imageY = 0;
    CGFloat imageWidth = contentRect.size.width;
    CGFloat imageHeight = contentRect.size.height * (1 - kTitlePersent);
    
    return CGRectMake(imageX, imageY, imageWidth, imageHeight - 3);
}

#pragma mark - 自定义title的大小
-(CGRect)titleRectForContentRect:(CGRect)contentRect
{
    CGFloat titleX = 0;
    CGFloat titleWidth = contentRect.size.width;
    CGFloat titleHeight = contentRect.size.height * kTitlePersent;
    CGFloat titleY = contentRect.size.height - titleHeight;
    
    return CGRectMake(titleX, titleY , titleWidth, titleHeight);
}

#pragma mark - 重写heightLiaht方法(取消父类在此方法中的所有操作)
-(void)setHighlighted:(BOOL)highlighted
{
    
}

@end
