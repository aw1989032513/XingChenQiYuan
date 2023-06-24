//
//  K3IntegratedSDKPaymentInfo.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-8-15.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface K3IntegratedSDKPaymentInfo : NSObject

/**
 *  订单金额,传入商品实际金额,单位元
 */
@property (nonatomic)float amount;

/**
 *  订单标题,一般传商品名称，如“100个水晶”
 *  订单标题必须明确标识所购商品的种类及数量
 *  不允许有模糊不清的描述，比如“一元商品”。
 */
@property (nonatomic,copy)NSString *orderTitle;

/**
 * v1.2修改属性
 *  商品Id，接入海马渠道时要求该Id与海马后台配置的商品Id一致，否则充值不能成功
 *  其他渠道暂时可以忽略//新增陌陌需传入
 */
@property (nonatomic ,copy)NSString *productId;
/**
 *  玩家角色名
 */
@property (nonatomic, copy)NSString *roleName;
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
 *  如果游戏不接入3k的用户系统，只接入充值系统，则该参数需要传入游戏自定义的用户id
 */
@property (nonatomic, copy)NSString *customUId;

/**
 * v1.2新增
 * momoSDK正版支付徐传入的商品ids
 */
@property (nonatomic, retain)NSSet *identifiers;
@end
