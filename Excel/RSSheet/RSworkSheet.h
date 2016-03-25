//
//  workSheet.h
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RSworkSheetRow.h"
/**
 *  `RSworkSheet` provide a new sheet for the folder. The folder (`RSworkBook`) may contain more `RSworkSheet`. Every `RSworkSheet` may contain one or more `RSworkSheetRow`. You can set the name of the sheet, the default column width and the default row height.
 */
@interface RSworkSheet : NSObject
/**
 *  name of the sheet
 */
@property(nonatomic, strong)NSString * name;
/**
 *  default width of the column
 */
@property(nonatomic, assign)float columnWidth;
/**
 *  default height of row
 */
@property(nonatomic, assign)float rowHeight;
/**
 *  Array of workSheetRow
 */
@property(nonatomic, readonly)NSArray * arrayWorkSheetRow;
/**
 *  init workSheet with new name.
 *
 *  @param nameSheet name
 *
 *  @return self
 */
- (id)initWithName:(NSString*)nameSheet;
/**
 *  add to workSheet new row.
 *
 *  @param row row
 */
- (void)addWorkSheetRow:(RSworkSheetRow*)row;
@end
