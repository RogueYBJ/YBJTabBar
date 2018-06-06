//
//  UIImage+Category.m
//  YBJPersonal
//
//  Created by mac on 2018/6/6.
//  Copyright © 2018年 mac. All rights reserved.
//

#import "UIImage+Category.h"

@implementation UIImage (Category)


//改变UIImageSize
+ (UIImage *) resizeImage:(UIImage *) image withNewSize:(CGSize) newSize
{
    UIGraphicsBeginImageContext(newSize);
    image=[image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [image drawInRect:CGRectMake(0, 0, newSize.width, newSize.height)];
    
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();
    return newImage;
}

@end
