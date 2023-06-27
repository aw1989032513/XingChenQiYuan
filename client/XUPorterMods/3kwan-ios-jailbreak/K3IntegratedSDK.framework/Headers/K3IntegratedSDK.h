//
//  K3IntegratedSDK.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-8-11.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "K3IntegratedSDKInitInfo.h"
#import "K3IntegratedSDKPaymentInfo.h"
#import "K3IntegratedSDKDefines.h"

@interface K3IntegratedSDK : NSObject

/**
 *  获取sdk单例
 */
+(id)sharedSDK;

/**
 *  初始化SDK
 *
 *  @param initInfo 初始化信息
 */
- (void)initSDKWithInitInfo:(K3IntegratedSDKInitInfo *)initInfo;

/**
 *  登录
 */
- (void)login;

/**
 *
 *  自动登陆接口  仅xysdk有效
 */
- (void)autoLogin;

/**
 * v1.2新增
 * mmsdk选服接口
 */
- (void)chooseGameServer:(NSString *)gameServerId;

/**
 *  登录并检查更新（定制接口）
 *
 *  @param shouldCheck 是否需要检查更新
 */
- (void)loginAndCheckUpdates:(BOOL)shouldCheck;

/**
 *  SDK充值接口
 *
 *  @param paymentInfo 充值信息
 */
- (void)payWithPaymentInfo:(K3IntegratedSDKPaymentInfo *)paymentInfo;

/**
 *  登出SDK
 */
- (void)logout;

/**
 *  显示SDK账号中心界面
 */
- (void)showAccountCenter;

/**
 *  获取当前登录的用户id
 *
 *  @return 用户id
 */
- (NSString *)currentUserId;

/**
 *  获取当前登录的用户的昵称
 *
 *  @return 用户昵称
 */
- (NSString *)currentNickname;

/**
 *  处理支付宝快捷支付，财付通等方式的回调结果，必须在
 *
 *  @param url
 */
- (void)handlePaymentResultCallBack:(NSURL *)url sourceApplication:(NSString *)sourceApplication;

/**
 *  处理支付宝快捷支付，财付通等方式的回调结果，必须在
 *  @return 是否需要处理
 *  @param url
 */
- (BOOL)handleReturnPaymentResultCallBack:(NSURL *)url sourceApplication:(NSString *)sourceApplication;


/**
 *  设置是否关闭渠道的充值功能
 *
 *  注：有一些渠道要求游戏在不开放充值测试期间必须关闭SDK的充值功能。
 *  所以如果游戏在不开放测试的情况下接入SDK必须关注该接口的设置
 *
 *  @param close   YES为关闭，NO为不关闭。默认为NO
 *  @param message 设置关闭充值功能时，页面的提示信息，仅当close为YES时有效
 */
- (void)closeRecharge:(BOOL)close withPromptMessage:(NSString *)message;

/**
 *  返回自有用户系统用户的验证结果给SDK
 *
 *  注：该接口目前只在接入快用SDK时有效
 *
 *  @param pass         YES为通过验证
 *  @param userId       自有用户系统中该用户对应的用户id，必须传有效值，否则无法正常充值
 *  @param errorMessage 错误信息，该信息将显示在SDK界面
 */
- (void)resultOfCustomUserVerification:(BOOL)pass withUserId:(NSString *)userId withErrorMessage:(NSString *)errorMessage;

/**
 *  显示SDK悬浮图标，如果该渠道SDK没有悬浮图标，则该方法的调用无效
 */
- (void)showAssistiveTouch;

/**
 *  隐藏SDK悬浮图标，如果该渠道SDK的悬浮图标不支持隐藏，则该方法调用无效
 */
- (void)hideAssistiveTouch;

/**
 *
 * v1.2新增
 * 处理momoSDK进入前台
 */
- (void)appBecomeActive;

/**
 * v1.2新增
 * 处理momoSDK进入后台
 *
 */
- (void)appEnterBackground;

/**
 * v1.2新增
 * 获取渠道号
 *
 */
- (NSString *)getChannelNum;

/**
 *  v3.4 是否可以显示用户中心
 */
- (BOOL)sdkCanShowAccountCenter;
/**
 *  v3.4 设置是否能显示浮标
 *
 *  @param flag 为YES可以显示浮标
 */
- (void)canShowFloatIcon:(BOOL) flag;
/**
 * v3.5
 * 新增都玩登陆回调
 */
- (void)loginDouwanCallBackWithAccountId:(NSString *)account_id
                               withToken:(NSString *)token
                        withToken_expire:(NSString *)token_expire;
/**
 *  获取广告标识符作为设备唯一标识
 *
 *  @return 用户第一次启动的idfa
 */
- (NSString *)fetchIdfaFromKeyChain;
@end
