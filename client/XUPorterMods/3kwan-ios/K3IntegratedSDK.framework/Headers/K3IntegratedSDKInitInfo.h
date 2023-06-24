//
//  K3IntegratedSDKInitInfo.h
//  K3PlatformIntegratedSDK
//
//  Created by WangMao on 14-8-12.
//  Copyright (c) 2014年 com.kkk5. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum{
    K3AssitiveLocationLeftTop = 1,      //左上
    K3AssitiveLocationLeftMiddle,       //左中
    K3AssitiveLocationLeftBottom,       //左下
    
    K3AssitiveLocationCenterTop,        //中上
    K3AssitiveLocationCenterBottom,     //中下
    
    K3AssitiveLocationRightTop,         //右上
    K3AssitiveLocationRightMiddle,      //右中
    K3AssitiveLocationRightBottom       //右下
    
} K3IntegratedSDKAssistiveLocation;

@interface K3IntegratedSDKInitInfo : NSObject

/**
 *  渠道分配的AppId，如果没有则不用传
 */
@property (nonatomic,copy)NSString *appId;
/**
 *  渠道分配的AppKey，如果没有则不用传
 */
@property (nonatomic,copy)NSString *appKey;
/**
 * v1.2新增
 *  渠道分配的pulicKey，如果没有则不用传
 */
@property (nonatomic, copy)NSString *pulicKey;
/**
 *  渠道分配的MerchantId，如果没有则不用传
 */
@property (nonatomic,copy)NSString *merchantId;
/**
 *  渠道分配的MD5 key，如果没有则不传
 */
@property (nonatomic,copy)NSString *md5Key;
/**
 *  渠道分配的fromId，如果没有则不用传，从2.1开始必须由plist传入。
 *  注：仅3k渠道需传入，传入方式由3KChannel.plist传入，一定不要再初始化代码中设置。（仅曹操传在初始化代码
 *  中设置）
 */
//@property (nonatomic,copy)NSString *fromId;
/**
 *  曹操传游戏分配FromId;
 *
 *
 */
@property (nonatomic, copy) NSString *ccFromId;
/**
 *  标识是否支持自定义的用户系统（即非渠道SDK用户系统）
 *
 *  注：该值目前只在接入快用SDK时有效，如果您的游戏是之前在快用上架过，
 *      而且没有接入快用用户系统的，请务必将该值设置为YES;
 *      如果您的游戏从未在快用上架过，则无论您的游戏是否有自有用户系统，都只能设置为NO。
 */
@property (nonatomic,getter = isSupportCustomUserSystem)BOOL supportCustomUserSystem;

/**
 *  如果使用自定义的用户系统，则可以传入一个用户信息数组，
 *  来展示在SDK的登录页面上，避免用户信息丢失
 *
 *  注：该值目前只在接入快用SDK时有效，该参数为传入的用户名密码数组，
 *  每对用户名，密码为一个字典，用户会显示在登陆界面和下拉列表
 *  字典格式为：用户名的key为：@"name"，密码的的key为：@"password"
 */
@property (nonatomic,retain)NSMutableArray *customUserArray;

/**
 *  3K平台分配的gameID，必填
 */
@property (nonatomic,copy)NSString *gameIdFor3K;
/**
 *  游戏名，必填
 */
@property (nonatomic,copy)NSString *gameNameFor3K;

/**
 *  设置SDK支持的方向
 */
@property (nonatomic)UIInterfaceOrientation orientation;

/**
 *  设置SDK是否可以自动旋转
 */
@property (nonatomic,getter = isAutoRotate)BOOL autoRotate;

/**
 *  设置一个展示SDK页面的ViewController //个别渠道(都玩等）需传入。默认为rootviewcontroller
 */
@property (nonatomic,retain)UIViewController *viewController;

/**
 *  设置SDK悬浮图标的位置
 */
@property (nonatomic)K3IntegratedSDKAssistiveLocation assitiveLocation;

/**
 *  设置是否调试模式，YES为调试模式，正式上线时应设为NO
 */
@property (nonatomic,getter = isDebugMode)BOOL debugMode;

/**
 *  设置游戏是否长连接，即是否可以由服务端主动推送消息给客户端
 *
 *  注：仅在接入爱思渠道时有效，该值影响SDK的充值模式，如果游戏为长连接，
 *     则爱思钱包余额不足时调用充值兑换接口，充值结果回调游戏服务器，然后由游戏服务器推送充值结果给服务端,
 *     如果游戏为短连接，则爱思钱包余额不足时调用爱思币充值接口，充值结果不回调游戏服务器。充值完成后
 *     需要用户再次发起购买请求，才可以购买游戏中的商品。
 */
@property (nonatomic,getter = isLongConnection)BOOL longConnection;

/**
 * v1.3新增
 * 仅快用平台有效
 * 游戏账号联系方式  如果是游戏账号，xSDK不提供找回，在此标注找回方式，QQ号什么的
 *
 */
@property (nonatomic, copy) NSString *gameContact;

/**
 * v1.3新增
 * 仅快用平台有效
 * 是否仅仅支持iphone /若支持iphone选NO
 *
 */
@property (nonatomic) BOOL onlySupportIphone;

/**
 * v1.4新增
 * 
 * 微信appid
 *
 */
//@property (nonatomic, copy)NSString *weixinAppId;

/**
 *  新增 都玩渠道 登陆前传入 服务器id 不传默认传入@"1"
 */
@property (nonatomic, copy)NSString *serverId;

/**
 *  新增 都玩渠道 登陆前传入 合作模式 不传默认传入@"2"
 */
@property (nonatomic, copy)NSString *co_op_douwan;

/**
 *  仅测试用
 */
//@property (nonatomic, copy)NSString *payType_3k;

/**
 *  初始化是否显示浮标
 */
@property (nonatomic)BOOL initShowAssitiveIcon;


@end
