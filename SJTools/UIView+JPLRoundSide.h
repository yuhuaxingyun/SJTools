//
//  UIView+JPLRoundSide.h
//  shangpai
//
//  Created by kevin on 2018/7/4.
//  Copyright © 2018年 dajau. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum {
    JPLSideLeft,        //左
    JPLSideRight,       //右
    JPLSideTop,         //上
    JPLSideBottom,      //下
    JPLSideTopLeft,     //上左
    JPLSideBottomLeft,  //下左
    JPLSideTopRight,    //上右
    JPLSideBottomRight  //下右
}JPLSide;

typedef enum : NSInteger{
    JPLShadowPathLeft,  //左阴影
    JPLShadowPathRight, //右阴影
    JPLShadowPathTop,   //上阴影
    JPLShadowPathBottom,//下阴影
    JPLShadowPathNoTop, //没有上阴影
    JPLShadowPathAllSide//全部阴影
} JPLShadowPathSide;

@interface UIView (JPLRoundSide)
/**
 @param side 类型  默认半径为8.0f
 */
- (void)roundSide:(JPLSide)side;
- (void)roundSide:(JPLSide)side Radius:(CGFloat)radius;
/*
 * shadowColor 阴影颜色
 *
 * shadowOpacity 阴影透明度，默认0
 *
 * shadowRadius  阴影半径，默认3
 *
 * shadowPathSide 设置哪一侧的阴影，
 
 * shadowPathWidth 阴影的宽度，
 */

-(void)setShadowPathWith:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(JPLShadowPathSide)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth;

//-(void)setShadowPathWith:(UIColor *)shadowColor shadowOpacity:(CGFloat)shadowOpacity shadowRadius:(CGFloat)shadowRadius shadowSide:(JPLShadowPathSide)shadowPathSide shadowPathWidth:(CGFloat)shadowPathWidth roundSide:(JPLSide)side Radius:(CGFloat)radius;
+ (void)drawDashLine:(UIView *)lineView lineLength:(int)lineLength lineSpacing:(int)lineSpacing lineColor:(UIColor *)lineColor;

@end
