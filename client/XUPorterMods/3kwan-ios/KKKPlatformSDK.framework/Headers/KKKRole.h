//
//  KKKRole.h
//  KKKWANSDK2017
//
//  Created by caf on 2017/3/20.
//  Copyright © 2017年 kkkwan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KKKRole : NSObject
@property(nonatomic, copy)NSString *roleId;
@property(nonatomic, copy)NSString *roleName;
@property(nonatomic, copy)NSString *serverName;
@property(nonatomic, copy)NSString *serverId;
@property(nonatomic, copy)NSString *userMoney;
@property(nonatomic, copy)NSString *vipLevel;

+ (instancetype)currentRole;
@end
