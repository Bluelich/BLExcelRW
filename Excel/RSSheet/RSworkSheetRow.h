//
//  workSheetRow.h
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSStyle.h"
#import "RSCell.h"
/**
 *  RSworkSheetRow determinate a row in a sheet. You can set the `height` of the row and the `style`.
 */
@interface RSworkSheetRow : NSObject

@property(nonatomic, readonly)NSMutableArray* cellArray;
/**
 *  Height of row
 */
@property(nonatomic, assign)float height;
/**
 *  The style of row (an instance of RSStyle)
 */
@property(nonatomic, strong)RSStyle * style;

/**
 *  create new row and set height.
 *
 *  @param height height
 *
 *  @return self
 */
- (id)initWithHeight:(NSInteger )height;
/**
 *  create new row with height and style of all cell in the row.
 *
 *  @param height height
 *  @param style  style
 *
 *  @return self
 */
- (id)initWithHeight:(NSInteger )height andStyle:(RSStyle *)style;
/**
 *  add new string cell.
 *
 *  @param content content
 */
- (void)addCellString:(NSString *)content;
/**
 *  add new string cell with particular style.
 *
 *  @param content content
 *  @param style   style
 */
- (void)addCellString:(NSString *)content withStyle:(RSStyle *)style;
/**
 *  add new Number cell.
 *
 *  @param content content
 */
- (void)addCellNumber:(float )content;
/**
 *  add new Number cell with particular style.
 *
 *  @param content content
 *  @param style   style
 */
- (void)addCellNumber:(float )content withStyle:(RSStyle *)style;
/**
 *  add new cell with Date (accept NSDate)
 *
 *  @param content content
 */
- (void)addCellDate:(NSDate *)content;
/**
 *  add new Date cell with particular style (accept NSDate)
 *
 *  @param content content
 *  @param style   style
 */
- (void)addCellDate:(NSDate *)content withStyle:(RSStyle *)style;
@end
