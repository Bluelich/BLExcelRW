//
//  workSheetRow.m
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import "RSworkSheetRow.h"

@interface RSworkSheetRow ()
@property(nonatomic, readwrite)NSMutableArray* cellArray;
@end

@implementation RSworkSheetRow
- (instancetype)init
{
    self = [super init];
    if (self) {
        _height = 20;
        _style = [[RSStyle alloc] init];
        _style.font = [UIFont systemFontOfSize:14];
        _style.size = 14;
        _style.color = [UIColor blackColor];
        _style.alignmentH = RSStyleLeftAlign;
        _style.alignmentV = RSStyleCenterAlign;
        _cellArray = [[NSMutableArray alloc] init];
    }
    return self;
}
- (instancetype)initWithHeight:(NSInteger)heightRow
{
    self = [[RSworkSheetRow alloc] init];
    if (self) {
        _height = heightRow;
    }
    return self;
}
- (instancetype)initWithHeight:(NSInteger)heightRow andStyle:(RSStyle *)styleRow
{
    self = [super init];
    if (self) {
        _height = heightRow;
        _cellArray = [[NSMutableArray alloc] init];
    }
    
    return self; 
}

- (void)addCellString:(NSString *)contentRow
{
    RSStyle * styleDefault = [[RSStyle alloc] init];
    styleDefault.font = [UIFont systemFontOfSize:14];
    styleDefault.size = 14;
    styleDefault.color = [UIColor blackColor];
    styleDefault.alignmentH = RSStyleMiddleAlign;
    styleDefault.alignmentV = RSStyleCenterAlign;
    
    RSCell * newCell = [[RSCell alloc] init];
    newCell.content = contentRow;
    newCell.type = cellTypeString;
    newCell.style = styleDefault;
    [_cellArray addObject:newCell];
    
}
- (void)addCellString:(NSString *)contentRow withStyle:(RSStyle *)styleRow
{
    RSCell * newCell = [[RSCell alloc] init];
    newCell.content = contentRow;
    newCell.type = cellTypeString;
    newCell.style = styleRow;
    
    [_cellArray addObject:newCell];
}
- (void)addCellNumber:(float)contentRow
{
    RSStyle * styleDefault = [[RSStyle alloc] init];
    styleDefault.font = [UIFont systemFontOfSize:14];
    styleDefault.size = 14;
    styleDefault.color = [UIColor blackColor];
    styleDefault.alignmentH = RSStyleLeftAlign;
    styleDefault.alignmentV = RSStyleCenterAlign;
    
    RSCell * newCell = [[RSCell alloc] init];
    newCell.content = [NSString stringWithFormat:@"%.2f", contentRow];
    newCell.type = cellTypeNumber;
    newCell.style = styleDefault;
    
    [_cellArray addObject:newCell];
}
- (void)addCellNumber:(float)contentRow withStyle:(RSStyle *)styleRow
{
    RSCell * newCell = [[RSCell alloc] init];
    newCell.content = [NSString stringWithFormat:@"%.2f", contentRow];
    newCell.type = cellTypeNumber;
    newCell.style = styleRow;
    
    [_cellArray addObject:newCell];
}
- (void)addCellDate:(NSDate *)contentRow
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-ddTHH:mm:ss"];
    NSString *dateString = [format stringFromDate:contentRow];
    
    RSStyle * styleDefault = [[RSStyle alloc] init];
    styleDefault.font = [UIFont systemFontOfSize:14];
    styleDefault.size = 14;
    styleDefault.color = [UIColor blackColor];
    styleDefault.alignmentH = RSStyleLeftAlign;
    styleDefault.alignmentV = RSStyleCenterAlign;
    
    RSCell * newCell = [[RSCell alloc] init];
    newCell.content = dateString;
    newCell.type = cellTypeDate;
    newCell.style = styleDefault;
    
    [_cellArray addObject:newCell];
    
    
}
- (void)addCellDate:(NSDate *)contentRow withStyle:(RSStyle *)styleRow
{
    NSDateFormatter *format = [[NSDateFormatter alloc] init];
    [format setDateFormat:@"yyyy-MM-ddTHH:mm:ss"];
    NSString *dateString = [format stringFromDate:contentRow];
    
    RSCell * newCell = [[RSCell alloc] init];
    newCell.content = dateString;
    newCell.type = cellTypeDate;
    newCell.style = styleRow;
    
    [_cellArray addObject:newCell];
}
@end
