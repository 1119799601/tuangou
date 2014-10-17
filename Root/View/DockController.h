//
//  DockController.h
//  新浪微博
//
//  Created by  on 14-9-7.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Dock.h"

@interface DockController : UIViewController<DockDelegate>
{
    Dock *_dock;
}

-(void)addDock;

@end
