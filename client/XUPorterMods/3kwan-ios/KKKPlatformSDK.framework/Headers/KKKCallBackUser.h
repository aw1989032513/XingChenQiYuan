//
//  KKKCallBackUser.h
//  KKKWANSDK2017
//
//  Created by caf on 2017/2/13.
//  Copyright © 2017年 kkkwan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KKKCallBackUser : NSObject
@property (nonatomic, copy)NSDictionary *kuserInfo;
@property (nonatomic, copy, readonly)NSString *kuserName;
@property (nonatomic, copy, readonly)NSString *ksign;
@property (nonatomic, copy, readonly)NSString *ktimeStamp;
@property (nonatomic, copy, readonly)NSString *kuserId;
@property (nonatomic, copy, readonly)NSString *kage;
@end
