//
//  K3IntegratedSDKResult.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-8-15.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    K3IntegratedSDKResultSuccess = 0,    //成功
    K3IntegratedSDKResultFail,           //失败
    K3IntegratedSDKResultWaitting        //等待处理
} K3IntegratedSDKResult;

typedef enum {
    PaymentSuccess = 0,   //支付成功
    PaymentFail,          //支付失败
    PaymentUnfinished     //支付未完成
}K3IntegratedSDKPaymentResult;

typedef enum {
    KYSwitchSmallAccount = 1,               //快用渠道切换小号回调标识
    KYSDKGameLogOut,                        //游戏调用快用注销接口，游戏可在适当的时候自行调用login方法登录
    KYSDKLogOut,                            //快用个人中心内退出，游戏无需自行调用登录
    SDKCallBackIdentifierUndefine           //未定义
}K3IntegratedSDKCallBackIdentifier;

@interface K3IntegratedSDKCallBackResult : NSObject

/**
 *  回调结果，success,fail，waitting三种结果，
 *  为success时其他值有意义，errorCode和errorMessage除外。
 *
 *  如果登录回调该值为waitting时，表示您使用的是自有用户系统，并同时返回了用户在SDK界
 *  面输入的用户名和用户密码。
 *  您需要在收到这个结果后，验证该用户在您的用户系统里的有效性，并且将验证结果返回给SDK。
 *  相关接口有：[K3IntegratedSDKInitInfo supportCustomUserSystem:];
 *
 *  如果支付回调该值为waitting时，表示您的充值订单已提交，正在等待充值结果，
 *  您需要在收到这个结果后，向您的游戏服务器发起订单轮询，查询充值结果
 */
@property (nonatomic)K3IntegratedSDKResult result;

/**
 *  渠道用户id，登录回调时有意义。
 *
 *  注：该值在同一个渠道的用户系统中唯一，但不能保证在不同渠道的用户系统中也唯一。
 *     渠道建议游戏将该值作为绑定游戏角色的唯一标识，游戏接入融合SDK时，需注意不同渠道的区分。
 */
@property (nonatomic,retain)NSString *userId;

/**
 *  渠道用户昵称或用户名，该值即使在同一渠道用户系统中，也不一定唯一。
 *  如果渠道返回了昵称则优先返回昵称，如果渠道只返回了用户名，则只返回用户名
 */
@property (nonatomic,retain)NSString *nickName;

/**
 *  自定义的用户系统的用户密码（即非渠道SDK用户系统的用户密码）
 *  注：该值目前只在接入快用SDK时有效，
 *     返回用户在渠道SDK界面上输入的登录用户的密码。
 */
@property (nonatomic,retain)NSString *customUserPassword;

/**
 *  回调错误码，仅fail时有意义。该值直接返回渠道的错误编码，暂时参考意义有限。
 */
@property (nonatomic,copy)NSString *errorCode;

/**
 *  回调错误描述消息，仅fail时有意义。该值直接返回渠道返回的错误信息，暂时参考意义有限。
 */
@property (nonatomic,copy)NSString *errorMessage;

/**
 *  回调标识符， 目前仅快用渠道用到，用来当切换小号在登录回调中进行判断，处理切换小号逻辑
 */
@property (nonatomic)K3IntegratedSDKCallBackIdentifier callBackIdentifier;
/**
 *  登陆回调token,用于登陆验证
 */
@property (nonatomic,copy)NSString *loginToken;
@end
