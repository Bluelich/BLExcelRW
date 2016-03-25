//
//  NSCell.h
//  excelWriterExample
//
//  Created by andrea cappellotto on 15/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSStyle.h"

typedef enum : NSUInteger {
    cellTypeNumber = 0,
    cellTypeString,
    cellTypeDate,
} cellType;
@interface RSCell : NSObject

@property (nonatomic, strong) RSStyle  * style;
@property (nonatomic, copy  ) NSString * content;
@property (nonatomic, assign) cellType type;

@end
