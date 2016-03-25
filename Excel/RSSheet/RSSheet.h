//
//  RSSheet.h
//  FeedbackData
//
//  Created by Bluelich on 16/3/24.
//  Copyright © 2016年 Bluelich. All rights reserved.
//

#ifndef RSSheet_h
#define RSSheet_h

/*
 RSSheet it's a simple class for iOS to write .xls file.
 
 Example
 {
     RSworkBook * folder = [ [RSworkBook alloc] init];
     folder.author = @"andrea cappellotto";
     folder.version = 1.2;
     
     RSworkSheet * sheet = [[RSworkSheet alloc] initWithName:@"prova"];
     
     RSworkSheetRow * row = [[RSworkSheetRow alloc] initWithHeight:20];
     [row addCellString:@"prova"];
     [row addCellString:@"prova2"];
     [sheet addWorkSheetRow:row];
     
     RSworkSheetRow * row2 = [[RSworkSheetRow alloc] initWithHeight:25];
     [row2 addCellNumber:100];
     [row2 addCellData:[NSDate date] ];
     [sheet addWorkSheetRow:row2];
     
     [folder addWorkSheet:sheet];
     
     NSArray *documentPaths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
        NSString *documentsDir = [documentPaths objectAtIndex:0];
     [folder writeWithName:@"test" toPath:documentsDir];
 }
 This code create test.xls compatible with MSOffice (Mac, Win). 
 Test.xls have two row with two cell. First row have two String and second row have a Number (float) and a date (NSDate)
 */

#import "RSworkBook.h"

#endif /* RSSheet_h */
