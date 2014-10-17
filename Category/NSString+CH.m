//
//  NSString+CH.m
//  新浪微博
//
//  Created by  on 14-9-5.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "NSString+CH.h"

@implementation NSString (CH)

-(NSString*)fileAppend:(NSString*)str
{
    
    //获得扩展名
    NSString *ext = [self pathExtension];
    
    NSMutableString *name = [NSMutableString stringWithString:self];
    
    [name insertString:str atIndex:(name.length - ext.length - 1)];
    
    return name;

}

@end
