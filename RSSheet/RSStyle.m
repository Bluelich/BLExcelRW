//
//  NSStyle.m
//  excelWriterExample
//
//  Created by andrea cappellotto on 14/09/11.
//  Copyright 2011 Università degli studi di Trento. All rights reserved.
//

#import "RSStyle.h"

@implementation RSStyle

-(BOOL)isEqual:(id)object
{
    if (![object isKindOfClass:[RSStyle class]]) {
        return NO;
    }
    RSStyle *another = (RSStyle *)object;
    return [self.font isEqual:another.font] &&
           [self.color isEqual:another.color]&&
           self.size == another.size &&
           self.alignmentH == another.alignmentH &&
           self.alignmentV == another.alignmentV;
}

@end
