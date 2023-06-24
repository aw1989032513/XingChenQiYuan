//
//  K3IntegratedSDKDefines.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-9-9.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#ifndef K3PlatformIntegratedSDK_K3IntegratedSDKDefines_h
#define K3PlatformIntegratedSDK_K3IntegratedSDKDefines_h

#define K3PlatformDownJoy 0
#define K3Platform91      0
#define K3PlatformI4      0
#define K3PlatformPP      0
#define K3PlatformTB      0
#define K3PlatformKY      0
#define K3PlatformITools  0
#define K3Platform3kwan   1
#define K3PlatformXY      0
#define K3PlatformHM      0
#define K3PlatformMM      0
#define K3PlatformMMIN    0
#define K3PlatformZH      0
#define K3PlatformFJ      0
#define K3PlatformYL      0
#define K3PlatformIA      0
#define K3Platform3KIN    0
#define K3PlatformPK93    0
#define K3PlatformGP      0
#define K3PlatformMP      0
#define K3Platform51ZS    0    //106？
/**SDK初始化结果回调*/
extern NSString * const k3KIntegratedSDKInitResultNotification;
/**SDK初始化结果回调*/
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

#endif
