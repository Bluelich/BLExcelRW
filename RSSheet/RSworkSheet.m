//
//  workSheet.m
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import "RSworkSheet.h"

@interface RSworkSheet ()
@property (strong, nonatomic) NSMutableArray *workSheetArray;
@end

@implementation RSworkSheet

- (id)initWithName:(NSString*)nameSheet
{
    self = [super init];
    if (self)
    {
        _name = [[NSString alloc] initWithFormat:@"%@",nameSheet];
        _columnWidth = 85;
        _rowHeight = 20;
        _workSheetArray = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)addWorkSheetRow:(RSworkSheetRow*)row
{
    [_workSheetArray addObject:row];
}

-(NSArray *)arrayWorkSheetRow
{
    return _workSheetArray;
}

@end
