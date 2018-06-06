//
//  UIImage+Category.h
//  YBJPersonal
//
//  Created by mac on 2018/6/6.
//  Copyright © 2018年 mac. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (Category)
/**
 *  获得指定size的图片
 *
 *  @param image   原始图片
 *  @param newSize 指定的size
 *
 *  @return 调整后的图片
 */
+ (UIImage *)resizeImage:(UIImage *) image withNewSize:(CGSize) newSize;

@end
