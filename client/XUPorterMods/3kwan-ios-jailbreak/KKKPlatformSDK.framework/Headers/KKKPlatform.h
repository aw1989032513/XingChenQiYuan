//
//  KKKPlatform.h
//  3kwan
//
//  Created by WangMao on 14-7-2.
//  Copyright (c) 2014年 3K玩. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "KKKPlatformInitInfo.h"
#import "KKKPlatformRechargeInfo.h"
#import "KKKPlatformCallbackResult.h"
//#import "HttpDelegate.h"

//测试验证专用
@protocol KKKPlatformDelegate <NSObject>

@optional

/**
 *  初始化回调
 *
 *  @param callbackResult 回调结果
 */
- (void)initCallBack:(KKKPlatformCallbackResult *)callbackResult;

/**
 *  登录回调
 */
- (void)loginCallBack:(KKKPlatformCallbackResult *)callbackResult;

/**
 *  支付结果回调
 */
- (void)paymentCallback:(KKKPlatformCallbackResult *)callbackResult;

/**
 *  SDK页面关闭回调(2.1版本新增接口)
 */
- (void)sdkViewClosedCallback;


@end

@interface KKKPlatform : NSObject 

@property (nonatomic,assign)id<KKKPlatformDelegate>delegate;


+(id)sharedInstance;

/**
 *  初始化3K玩平台SDK
 *
 *  @param initInfo SDK初始化信息
 */
- (void)initSDKWithInitInfo:(KKKPlatformInitInfo *)initInfo;

/**
 *  3K玩平台SDK登录接口
 */
- (void)login;

/**
 *  3K玩平台SDK支付接口
 *
 *  @param rechargeInfo 充值信息
 */
- (void)payWithRechargeInfo:(KKKPlatformRechargeInfo *)rechargeInfo;

/**
 *  处理支付回调结果
 *
 *  @param url
 */
- (void)handlePaymentCallbackURL:(NSURL *)url;

/**
 *  显示悬浮窗（2.1版新增接口）
 */
- (void)showAssistiveTouch;

/**
 *  隐藏悬浮窗（2.1版本新增接口）
 */
- (void)hideAssistiveTouch;

/**
 *  用户注销 (2.1版本新增接口)
 */
- (void)logout;



@end
