//
//  KKKGameSDK.h
//  KKKWANSDK2017
//
//  Created by caf on 2017/2/13.
//  Copyright © 2017年 kkkwan. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "KKKCallBackUser.h"


typedef void (^KKKNCheckPayLimitAction)(BOOL canPay);

@protocol KKKWanSDKDelegate;
@interface KKKGameSDK : NSObject
@property (nonatomic, weak)id <KKKWanSDKDelegate> kkk_delegate;

+ (instancetype)sharedKKKGameSDK;


/**
 初始化
 */
- (void)kkk_initSDK;


/**
 登录
 */
- (void)kkk_login;


/**
 注销
 */
- (void)kkk_logOut;


/**
 进入网页
 */
-(void)goWebView:(NSString*)url withTitle:(NSString *)titleName;




///**
// 显示浮标 sdk 内部会自动调用，无须关注
// */
- (void)kkk_assivetiveIconShow;
///**
// 隐藏浮标 sdk 内部会自动调用，无须关注
// */
- (void)kkk_assivetiveIconHide;

//隐藏浮标红点
- (void)kkk_hideAssivetiveIconMark;

/**
 打开用户中心
 */
- (void)kkk_accountCenter;




- (void)showAccontCenterWithType:(NSString *)type;

/**
 打开客服中心
 */
-(void)kkk_serviceCenter;







- (void)kkk_checkPayLimitWithResultWithMoney:(NSInteger)money withResult:(KKKNCheckPayLimitAction)result;





- (NSString *)kkk_sdkVersion;



/**
 设置调试模式
 
 @param isdmode YES时开启，默认关闭
 */
- (void)kkk_setDebugMode:(BOOL)isdmode;





/**
 AppDelegate.m中 applicationDidBecomeActive: 方法内调用
 */
- (void)kkk_didBecomeActive;


/**
 AppDelegate.m中 application: openURL: sourceApplication: sourceApplicationannotation:  方法内调用
 */
- (BOOL)kkk_application:(UIApplication *)application
                openURL:(NSURL *)url
      sourceApplication:(NSString *)sourceApplication
             annotation:(id)annotation;

/**
 AppDelegate.m中 application: openURL: options:  方法内调用
 */

- (BOOL)kkk_application:(UIApplication *)app
                openURL:(NSURL *)url
                options:(NSDictionary *)options;


- (void)application:(UIApplication *)application didRegisterForRemoteNotificationsWithDeviceToken:(NSData *)deviceToken;


#pragma mark - 测试用接口（正式包中不要调用）
/**
 *  清除保存设备信息（仅测试用）
 */
- (void)clearKeyChainData;

//发送统计，sdk内部调用
- (void)startStLogRequest;

@end

@protocol KKKWanSDKDelegate <NSObject>

/**
 初始化成功回调
 */
- (void)kkk_initSuccess;


/**
 初始化失败回调
 
 @param kerror 返回的错误信息
 */
- (void)kkk_initFail:(NSError *)kerror;


/**
 登录成功回调
 
 @param kuser 返回的用户信息
 */
- (void)kkk_loginSuccess:(KKKCallBackUser *)kuser;


/**
 登录失败回调
 
 @param kerror 返回的错误信息
 */
- (void)kkk_loginFail:(NSError *)kerror;


/**
 注销回调
 */
- (void)kkk_didLogOut;


- (void)kkk_successVerfifyRealNameWithAge:(NSString *) age;



@end

