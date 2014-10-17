//
//  UIBarButtonItem+CH.m
//  新浪微博
//
//  Created by chenhao on 9/6/14.
//
//

#import "UIBarButtonItem+CH.h"

@implementation UIBarButtonItem (CH)

-(id)initWithIcon:(NSString *)iconName hightLight:(NSString *)heightlight target:(id)target action:(SEL)select
{
    
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    
    UIImage *image = [UIImage imageNamed:iconName];
    [btn setBackgroundImage:image forState:UIControlStateNormal];
    [btn setBackgroundImage:[UIImage imageNamed:heightlight] forState:UIControlStateHighlighted];
    [btn addTarget:target action:select forControlEvents:UIControlEventTouchUpInside];
    
    [btn setBounds:CGRectMake(0, 0, image.size.width, image.size.height)];
    
    return [self initWithCustomView:btn];
    
}

+(id)itemWithIcon:(NSString *)iconName hightLight:(NSString *)heightlight target:(id)target action:(SEL)select
{
   return  [[UIBarButtonItem alloc] initWithIcon:iconName hightLight:heightlight target:target action:select];
}

@end
