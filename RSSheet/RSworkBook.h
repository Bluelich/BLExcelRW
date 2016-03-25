//
//  workBook.h
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIColor-Expanded.h"
#import "RSworkSheet.h"
#import "RSworkSheetRow.h"
#import "RSCell.h"
#import "RSStyle.h"
/**
 *  RSworkBook it's the folder that contains all the `RSworkSheet`. It's a simple container that write to file the document
 */
@interface RSworkBook : NSObject
/**
 *  the author of the document
 */
@property(nonatomic, copy)NSString * author;
/**
 *  version of the document
 */
@property(nonatomic, copy)NSString *version;
/**
 *  date that write document
 */
@property(nonatomic, strong)NSDate * date;
/**
 *  default style to all cell (it's applied if the style of cell and row did not specified)
 */
@property(nonatomic, strong)RSStyle * defaultStyle;
/**
 *  sheets
 */
@property(nonatomic, strong,readonly) NSArray *workSheets;
/**
 *  add workSheet to folder.
 *
 *  @param sheet sheet
 */
- (void)addWorkSheet:(RSworkSheet *)sheet;
/**
 *  write the document with specified name and ti specified path.
 *
 *  @param name name
 *  @param path path
 *
 *  @return YES/NO
 */
- (BOOL)writeWithName:(NSString*)name toPath:(NSString*)path;
@end
