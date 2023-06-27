//
//  K3IntegratedSDKStatistics.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-9-1.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#import <Foundation/Foundation.h>
typedef enum {
    RoleAdd = 0,        //角色新增
    RoleLogin,          //角色登陆
    RoleLevel           //角色升级
} KKKStatisticsType;
@interface K3IntegratedSDKStatistics : NSObject

/**
 *  请求统计角色接口   // v1.7更改统计接口 (去掉gameVersion字段,新增balance字段）
 *
 *  @param roleId         角色id
 *  @param roleName       角色名
 *  @param roleLevel      角色等级
 *  @param serverId       服务器id
 *  @param serverName     服务器名
 *
 *
 *  @param game_version   游戏版本号
 *  @param vip_level      角色名
 *  @param balance        游戏币余额
 *  @param roleCreateTime 角色创建时间（10位时间戳，RoleAdd需传，其余传@"")
 *  @param type           统计类型
 *
 */
+(void)requestGameRoleStatisticsWithRoleId:(nonnull NSString *)roleId
                                  roleName:(nonnull NSString *)roleName
                                 roleLevel:(nonnull NSString *)roleLevel
                                  serverId:(nonnull NSString *)serverId
                                serverName:(nonnull NSString *)serverName
                                  vipLevel:(nonnull NSString *)vip_level
                                   balance:(nonnull NSString *)balance
                                 roleCTime:(nonnull NSString *)roleCreateTime
                            statisticsType:(KKKStatisticsType)type;
/**
 *  请求统计游戏中金币消耗情况，游戏可在玩家消耗金币的地方调用该接口（可选）
 *
 *  @param amount 金币数量
 */
+(void)requestGamePaymentStatisticsWithAmount:(int)amount;



@end
