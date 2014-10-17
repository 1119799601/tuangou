//
//  Dock.h
//  新浪微博
//
//  Created by  on 14-9-5.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//  


#import <UIKit/UIKit.h>
#import "DockItem.h"
#import "NSString+CH.h"

@class Dock;

@protocol DockDelegate <NSObject>

@optional
-(void)Dock:(Dock*)dock itemSelectedFrom:(int)fromIndex to:(int)toIndex;

@end


@interface Dock : UIView

@property(nonatomic,assign)id<DockDelegate>delegate;

-(void)addItemWithIcon:(NSString*)imageName title:(NSString*)title;

-(void)itemClick:(DockItem*)item;

@end
