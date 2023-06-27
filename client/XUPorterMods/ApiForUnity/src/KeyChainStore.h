//
//  KeyChainStore.h
//  KeyboardTest
//
//  Created by Hoooosr on 16/10/12.
//  Copyright © 2016年 Hoooosr. All rights reserved.
//

#ifndef KeyChainStore_h
#define KeyChainStore_h

@interface KeyChainStore : NSObject

+ (void)save:(NSString *)service data:(id)data;
+ (id)load:(NSString *)service;
+ (void)deleteKeyData:(NSString *)service;

@end

#endif /* KeyChainStore_h */
