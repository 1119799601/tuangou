//
//  Dock.m
//  新浪微博
//
//  Created by  on 14-9-5.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//
#define kItemWidth  40
#define kBorderWidth 10
#define kItemSpace   ([UIScreen mainScreen].applicationFrame.size.width - 4 * kItemWidth - kBorderWidth * 2)/3.0



#import "Dock.h"

@implementation Dock
{
    DockItem *_currentItem;
}
@synthesize delegate = _delegate;

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        self.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"tabbar_background"]];
    
    }
    return self;
}


//向当前视图中添加按钮
-(void)addItemWithIcon:(NSString*)imageName title:(NSString*)title
{
    DockItem *item = [[DockItem alloc] init];
    [item setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
    [item setImage:[UIImage imageNamed:[imageName fileAppend:@"_pressed"]] forState:UIControlStateSelected];
    [item setTitle:title forState:UIControlStateNormal];
    [item setTitleColor:[UIColor grayColor] forState:UIControlStateNormal];
    [item setTitleColor:[UIColor orangeColor] forState:UIControlStateSelected];
    
    [item addTarget:self action:@selector(itemClick:) forControlEvents:UIControlEventTouchDown];
    
    [self addSubview:item];
    
    int count = self.subviews.count;
    
    //默认选中第一个item
    if (count==1)
    {
        [self itemClick:item];
    }
    
    CGFloat height = self.frame.size.height;
//    CGFloat width = self.frame.size.width / count;
  
    for (int i = 0; i < count; i++) 
    {
        DockItem *dockitem = [self.subviews objectAtIndex:i];
        dockitem.tag = i;

        float OriX = kBorderWidth + i * kItemWidth + kItemSpace * i;
        dockitem.frame = CGRectMake(OriX, 0, kItemWidth, height);
   
    }
}

#pragma mark - 监听item点击
-(void)itemClick:(DockItem*)item
{
    
    //通知代理
    if ([self.delegate respondsToSelector:@selector(Dock:itemSelectedFrom:to:)]) 
    {
        [self.delegate Dock:self itemSelectedFrom:_currentItem.tag to:item.tag];
    } 
    
    _currentItem.selected = NO;
    item.selected = YES;
    _currentItem = item;
   
}


@end
