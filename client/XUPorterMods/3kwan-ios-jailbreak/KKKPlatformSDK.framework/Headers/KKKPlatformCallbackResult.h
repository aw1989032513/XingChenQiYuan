//
//  KKKPlatformCallbackResult.h
//  3kwan
//
//  Created by WangMao on 14-7-3.
//  Copyright (c) 2014年 3K玩. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    KKKPlatformRechargeTypeAlipay = 0,
    KKKPlatformRechargeTypeUPPay,
    KKKPlatformRechargeTypeTencentPay,
    KKKPlatformRechargeTypeCardPay,
    KKKPlatformRechargeTypeWechatPay, //微信支付 v2.2新增
    kkkPlatformRechargeTypeAll        //这个暂未使用
} KKKPlatformRechargeType;

typedef enum {
    KKKPlatformResultSuccess = 0,
    KKKPlatformResultFail,
    KKKPlatformResultCancel
} KKKPlatformResult;

typedef enum {
    KKKPlatformErrorCodeUnderMaintenance = 1001,    //系统正在维护，初始化失败时需要关注该情况
    KKKPlatformErrorCodeUnknownError     = 5000,    //未知失败
    KKKPlatformErrorCodeNetworkFailed    = 8000     //网络连接失败
    
} KKKPlatformErrorCode;

@interface KKKPlatformCallbackResult : NSObject

/**
 *  回调结果，success,cancel,fail三种结果，
 *  errorCode和errorMessage在回调结果为fail情况下有意义
 *  其他值在回调结果为success情况下有意义
 */
@property (nonatomic)KKKPlatformResult result;

@property (nonatomic,retain)NSString *userId;

@property (nonatomic,retain)NSString *userName;

@property (nonatomic,retain)NSString *timeStamp;

@property (nonatomic,retain)NSString *sign;

@property (nonatomic)KKKPlatformRechargeType rechargeType;
/**v2.1版本新增，标识错误信息的错误码*/
@property (nonatomic)KKKPlatformErrorCode errorCode;
/**v2.1版本新增，标识错误信息的错误信息文本*/
@property (nonatomic,retain)NSString *errorMessage;

@end
