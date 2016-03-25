//
//  NSStyle.h
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum : NSUInteger {
    RSStyleTopAlign = 0,
    RSStyleCenterAlign,
    RSStyleBottomAlign,
} verticalAlign;

typedef enum : NSUInteger{
    RSStyleLeftAlign = 0,
    RSStyleMiddleAlign,
    RSStyleRightAlign,
}horizontalAlign;

/**
 *  with RSStyle you can create the basic style of sheet, row and cell.
 */
NS_CLASS_AVAILABLE_IOS(6_0) @interface RSStyle : NSObject
/**
 *   A typedef for vertical align
 */
@property(nonatomic, assign)verticalAlign alignmentV;
/**
 *   A typedef for horizontal align
 */
@property(nonatomic, assign)horizontalAlign alignmentH;
/**
 *  the font of this style
 */
@property(nonatomic, strong)UIFont * font;
/**
 *  color of font
 */
@property(nonatomic, strong)UIColor * color;
/**
 *  size of font
 */
@property(nonatomic, assign)float size;
@end
NS_ASSUME_NONNULL_END