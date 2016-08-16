//
//  DLFIFOCache.h
//  DLSlideViewDemo
//
//
//  Created by Dongle Su on 15-8-4.
//  Copyright (c) 2015年 dongle. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "DLCacheProtocol.h"

@interface DLLRUCache : NSObject<DLCacheProtocol>

- (id)initWithCount:(NSInteger)count;

- (void)setObject:(id)object forKey:(NSString *)key;
- (id)objectForKey:(NSString *)key;
@end
