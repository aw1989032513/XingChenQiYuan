//
//  KKKPlatformRechargeInfo.h
//  3kwan
//
//  Created by WangMao on 14-7-2.
//  Copyright (c) 2014年 3K玩. All rights reserved.
//

#import <Foundation/Foundation.h>

/**
 *  3K充值信息类
 */
@interface KKKPlatformRechargeInfo : NSObject

/**
 *  玩家角色id
 */
@property (nonatomic,copy)NSString *roleId;

/**
 *  游戏服务器id
 */
@property (nonatomic,copy)NSString *serverId;

/**
 *  游戏服务器名称
 */
@property (nonatomic,copy)NSString *serverName;

/**
 *  CP接收3K平台充值结果通知的地址
 */
@property (nonatomic,copy)NSString *notifyURL;

/**
 *  CP私有字段，原样返回给CP
 */
@property (nonatomic,copy)NSString *userInfo;

/**
 *  申请应用时分配给CP的秘钥
 */
@property (nonatomic,copy)NSString *clientSecret;

/**
 *  充值金额,单位元,传0时表示非定额充值(由玩家自己选择充值金额)
 */
@property (nonatomic)float amount;

/**
 *  如果游戏不接入3k的用户系统，只接入充值系统，则该参数需要传入游戏自定义的用户id
 */
@property (nonatomic,copy)NSString *customUserId;


@end
