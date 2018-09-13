//
//  NSArray+Extenssion.m
//  Decoration
//
//  Created by DD on 2018/9/6.
//  Copyright © 2018年 shangshuai. All rights reserved.
//

#import "NSArray+Extenssion.h"

@implementation NSArray (Extenssion)
- (id)safeObjectAtIndex:(NSUInteger)index{

    if (index >= self.count) {
        return nil;
    }

    return [self objectAtIndex:index];

}
@end
