//
//  UIBarButtonItem+CH.h
//  新浪微博
//
//  Created by chenhao on 9/6/14.
//
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (CH)

-(id)initWithIcon:(NSString*)iconName hightLight:(NSString*)heightlight target:(id)target action:(SEL)select;

+(id)itemWithIcon:(NSString*)iconName hightLight:(NSString*)heightlight target:(id)target action:(SEL)select;

@end
