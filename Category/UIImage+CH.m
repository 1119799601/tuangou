//
//  UIImage+CH.m
//  新浪微博
//
//  Created by  on 14-9-5.
//  Copyright (c) 2014年 __MyCompanyName__. All rights reserved.
//

#import "UIImage+CH.h"
#import "NSString+CH.h"

@implementation UIImage (CH)

//+ (UIImage*)fullScreenImage:(NSString*)imageName
//{
//    
//    if(iPhone5)
//    {
//        
//        return [self imageNamed:[imageName fileAppend:@"-568h@2x"]];
//        
//    }
//    else
//    {
//        return [self imageNamed:imageName];
//    }
//}

+ (UIImage*)streachImage:(NSString*)imageName
{
    UIImage *image1 = [UIImage imageNamed:imageName];
    UIImage *image2 = [image1 stretchableImageWithLeftCapWidth:image1.size.width*0.5 topCapHeight:image1.size.height*0.5];
    
    return image2;
}

@end
