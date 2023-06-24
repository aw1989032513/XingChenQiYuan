//
//  K3IntegratedSDKDefines.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-9-9.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#ifndef K3PlatformIntegratedSDK_K3IntegratedSDKDefines_h
#define K3PlatformIntegratedSDK_K3IntegratedSDKDefines_h

#define K3PlatformDownJoy 0       //无更新
#define K3Platform91      0       //无更新
#define K3PlatformI4      0
#define K3PlatformPP      0
#define K3PlatformTB      0
#define K3PlatformKY      0
#define K3PlatformITools  0      //*重编译需全部文件
#define K3Platform3kwan   0
#define K3PlatformXY      0
#define K3PlatformHM      0
#define K3PlatformMM      0      //无更新


#define K3PlatformMMIN    0      //*重编译需全部文件 陌陌sdk
#define OnlyForHJTK  0   //是否为红警坦克定制 陌陌 sdk接口



#define K3PlatformZH      0
#define K3PlatformFJ      0       //无更新
#define K3PlatformYL      0       //无更新
#define K3PlatformIA      0       //*重编译需全部文件（有.a库资源则需要重新编译？）



#define K3Platform3KIN    0



#define K3PlatformPK93    0       //无更新
#define K3PlatformGP      0       //无更新
#define K3PlatformMP      0       //无更新

#define K3Platform3KINMIX 0

#define K3Platform3KNew   1

/**当前融合sdk版本*/

#if K3Platform3KIN
  #define CURRENT_INTEGRATEDSDK_VERSION @"4.2.3"   //4.0,4.0.1,4.1.0,4.1.1,4.1.2,4.2.0,4.2.1,4.2.2

#elif K3Platform3KINMIX || K3Platform3KNew
  #define CURRENT_INTEGRATEDSDK_VERSION @"4.5.4"
/*
 4.0   修改订单接口请求方式（仅3k内购）
 4.1.0 混合支付方式不再客户端控制
 4.2.2 https(预编译关闭)
 4.2.3 稳定性提审  completeKKKGameTransaction: 字典值完全验证v orderid为空取nsuserdefault中值
 4.2.4 登陆返回age 
 4.2.7 新增打开网页接口
 4.2.8 解决和3ksdk读写钥匙串的冲突
 4.2.9 修复最新ipad上统计奔溃问题
 4.5.0 监控字段增加 ios10以上将采用urlsession进行订单请求。获取dns等时间
 4.5.1 激活发送策略调整
 4.5.2 用户，角色统计接口加密 移除与支付相关的多余字段和接口(支付类型)移除
 4.5.3 去掉广告统计
 4.5.4 优化3k内购支付（减少订单不匹配情况)
 */
#else
/*
 
 4.2.1
 4.2.2 当陌陌支付多档次同价格时，不会按productid来支付问题。
 4.2.5 新增willEnterForeground接口，用于传递系统回调信息
 4.2.6 修复融合陌陌渠道出现的订单不匹配现象
 4.2.7 新增打开网页接口
 4.2.9 修复最新ipad上统计奔溃问题
 4.5.2 用户，角色统计接口加密 移除与支付相关的多余字段和接口(支付类型)移除
 4.5.3 去掉融合陌陌sdk广告统计
 */

  #define CURRENT_INTEGRATEDSDK_VERSION @"4.5.3"
#endif



#define KWAP_OPENHTTPS   0    //是否开启https

#define K3AppstoreUn3kLogo  0   //是否关闭3k标识




/**SDK初始化结果回调*/
extern NSString * const k3KIntegratedSDKInitResultNotification;
/**SDK登陆结果回调*/
extern NSString * const k3KIntegratedSDKLoginResultNotification;
/**SDK充值结果回调*/
extern NSString * const k3KIntegratedSDKPaymentResultNotification;
/**SDK注销结果回调*/
extern NSString * const k3KIntegratedSDKLogoutResultNotification;
/**SDK关闭页面结果回调*/
extern NSString * const k3KIntegratedSDKCloseViewResultNotification;
/**SDK退出暂停页结果回调，仅91有效*/
extern NSString * const k3KIntegratedSDKExitPauseViewNotification;
/**SDK通知结果对象的key*/
extern NSString * const k3KIntegratedSDKCallBackResultKey;
/**SDK关闭充值页面结果回调，仅3k越狱sdk有效*/
extern NSString * const k3KIntegratedSDKClosePurchaseViewNotification;
/**渠道登陆回调，cp无需关注此通知*/
extern NSString * const k3KIntegratedSDKPlatformLoginResultNotification;
/**实名验证结果通知**/
extern NSString * const k3KIntegratedSDKVerifyRealNameResultNotification;


#if K3PlatformHM
extern NSString * const k3KIntegratedSDKHM_VERSION;
#elif K3PlatformZH
extern NSString * const k3KIntegratedSDKZH_VERSION;
#endif


#endif
