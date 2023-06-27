#include "K3SDK.h"
#include "ApiForUnity.h"

@implementation K3SDK

// 共享实例(单例模式)
+(id) sharedInstance{
    static dispatch_once_t pred = 0;
    __strong static id _sharedObject = nil;
    dispatch_once(&pred, ^{
        _sharedObject = [[self alloc] init];
    });
    return _sharedObject;
}

// 构造函数
-(id) init{
    if(self = [super init]){
        // 注册初始化结果通知回调函数
        [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(initCallBack:) name: k3KIntegratedSDKInitResultNotification object: nil];
        
        // 注册登录结果通知回调函数
        [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(loginCallBack:) name: k3KIntegratedSDKLoginResultNotification object: nil];
        
        // 注册注销结果通知回调函数
        [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(logoutCallBack:) name: k3KIntegratedSDKLogoutResultNotification object:nil];
        
        // 注册充值结果通知回调函数
        [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(paymentCallBack:) name: k3KIntegratedSDKPaymentResultNotification object: nil];
        
        // 注册关闭页面通知回调函数
        [[NSNotificationCenter defaultCenter] addObserver: self selector: @selector(closeSDKView:) name: k3KIntegratedSDKCloseViewResultNotification object: nil];
    }
    return self;
}

// 发送消息到Unity中
-(void) sendMessage: (NSDictionary *) data {
    SendMessage("KKKSdkGameObject", "MessageFromSDK", data);
}

// sdk初始化
- (void) SdkInit:(NSString*) config{
    NSError *error;
    NSData *data = [config dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if(!json){
        NSLog(@"=> 初始化配置信息无法解析%@", error);
        return;
    }

    UIInterfaceOrientation orientation = UIInterfaceOrientationPortrait;
    
    K3IntegratedSDKInitInfo *info = [[K3IntegratedSDKInitInfo alloc] init];
    
    [info setAppId: @"347"];
    [info setAppKey: @"SWNW7Jw1VYle4bPElOvVfmtd2NCK2uq3"];
    [info setMerchantId: @""];
    [info setMd5Key: @""];
    [info setGameIdFor3K: @"92"];
    [info setGameNameFor3K: @"星辰奇缘"];
    // SDK的UI是否允许自动旋转
    [info setAutoRotate: [[json valueForKey:@"autoRotate"] boolValue]];
    // SDK的UI界面方向
    [info setOrientation: orientation];
    // SDK悬浮窗位置
    [info setAssitiveLocation: K3AssitiveLocationLeftMiddle];
    // 是否开启调试模式，上架时必须关闭
    [info setDebugMode: [[json valueForKey:@"debugMode"] boolValue]];
    
    [[K3IntegratedSDK sharedSDK] initSDKWithInitInfo:info];
    
    [info release];
    
    [[K3IntegratedSDK sharedSDK] canShowFloatIcon:[[json valueForKey:@"canShowFloatIcon"] boolValue]];
}

-(void) Pay:(NSString*) payInfo{
    // NSLog(@"=> PayInfo: %@", payInfo);
    NSError *error;
    NSData *data = [payInfo dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if(!json){
        NSLog(@"=> 支付信息无法解析%@", error);
        return;
    }
    K3IntegratedSDKPaymentInfo *info = [[K3IntegratedSDKPaymentInfo alloc] init];
    // 充值金额
    info.amount = [[json objectForKey:@"amount"] floatValue];
    // 订单标题
    info.orderTitle = [json objectForKey:@"orderTitle"];
    // 角色ID
    info.roleId = [json objectForKey:@"roleId"];
    // 服务器ID
    info.serverId = [json objectForKey:@"serverId"];
    // 服务器名称
    info.serverName = [json objectForKey:@"serverName"];
    // 支付结果接收地址(服务端)
    info.notifyURL = [json objectForKey:@"notifyURL"];
    // 该字段将随结果原样返回
    info.userInfo = [json objectForKey:@"userInfo"];
    // 道具ID
    info.productId = [json objectForKey:@"productId"];
    // NSLog(@"订单信息:");
    // NSLog(@"=> amount: %f", info.amount);
    // NSLog(@"=> orderTitle: %@", info.orderTitle);
    // NSLog(@"=> roleId: %@", info.roleId);
    // NSLog(@"=> serverId: %@", info.serverId);
    // NSLog(@"=> serverName: %@", info.serverName);
    // NSLog(@"=> notifyURL: %@", info.notifyURL);
    // NSLog(@"=> productId: %@", info.productId);
    // 道具ID组，苹果后台申请的道具ID
    NSDictionary *dict = [json objectForKey:@"identifiers"];
    NSMutableSet *set = [NSMutableSet set];
    for(id key in dict){
        [set addObject: [dict objectForKey:key]];
    }
    info.identifiers = set;
    // NSLog(@"=> identifiers: %@", set);
    [[K3IntegratedSDK sharedSDK] payWithPaymentInfo:info];
    [info release];
}

// 统计信息
-(void) StatisticsInfo:(NSString*) info{
    NSError *error;
    NSData *data = [info dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:&error];
    if(!json){
        NSLog(@"=> 统计信息无法解析%@", error);
        return;
    }
    NSString *roleId = [json objectForKey:@"roleId"];
    NSString *roleName = [json objectForKey:@"roleName"];
    NSString *roleLevel = [json objectForKey:@"roleLevel"];
    NSString *serverId = [json objectForKey:@"serverId"];
    NSString *serverName = [json objectForKey:@"serverName"];
    NSString *vipLevel = [json objectForKey:@"vipLevel"];
    NSString *balance = [json objectForKey:@"balance"];
    NSString *typeString = [json objectForKey:@"statisticsType"];
    // 转换类型
    KKKStatisticsType type = RoleLevel;
    if([typeString isEqualToString:@"RoleAdd"]){
        type = RoleAdd;
    }else if([typeString isEqualToString:@"RoleLogin"]){
        type = RoleLogin;
    }else if([typeString isEqualToString:@"RoleLevel"]){
        type = RoleLevel;
    }
    // NSLog(@"统计信息: roldId:%@ roleName:%@ roleLevel:%@ serverId:%@ serverName:%@ vipLevel:%@ balance:%@ typeString:%@", roleId, roleName, roleLevel, serverId, serverName, vipLevel, balance, typeString);
    [K3IntegratedSDKStatistics requestGameRoleStatisticsWithRoleId:roleId
                                                          roleName:roleName
                                                         roleLevel:roleLevel
                                                          serverId:serverId
                                                        serverName:serverName
                                                          vipLevel:vipLevel
                                                           balance:balance
                                                    statisticsType:type
     ];
}

- (void)initCallBack: (NSNotification *) notification {
    // NSLog(@"=> 收到3K SDK初始化回调通知");
    K3IntegratedSDKCallBackResult *callBackResult = [notification.userInfo objectForKey:k3KIntegratedSDKCallBackResultKey];
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if(callBackResult.result == K3IntegratedSDKResultSuccess){
        [dict setObject:@"init_callback" forKey:@"type"];
        [dict setObject:@"" forKey:@"error"];
    }else{
        [dict setObject:@"init_callback" forKey:@"type"];
        [dict setObject:@"初始化失败" forKey:@"error"];
    }
    [self sendMessage: dict];
}

- (void)loginCallBack: (NSNotification *) notification {
    // NSLog(@"=> 收到登录回调通知");
    NSDictionary *userinfo = notification.userInfo;
    if((bool) userinfo[@"hasCheck"] == true){
        if([userinfo[@"statusCode"] isEqualToString:@"0"]){
            // 登录成功，通知游戏主程序
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:@"login_callback" forKey:@"type"];
            [dict setObject:@"" forKey:@"error"];
            [dict setObject:userinfo[@"userId"] forKey:@"userid"];
            [dict setObject:userinfo[@"userName"] forKey:@"username"];
            [self sendMessage: dict];
        }else{
            // 登录失败，再次弹出登录窗口
            [[K3IntegratedSDK sharedSDK] login];
        }
    }else{
        K3IntegratedSDKCallBackResult *callBackResult = [userinfo objectForKey:k3KIntegratedSDKCallBackResultKey];
        if (callBackResult.result == K3IntegratedSDKResultSuccess) {
            // 登录成功，通知游戏主程序
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:@"login_callback" forKey:@"type"];
            [dict setObject:@"" forKey:@"error"];
            [dict setObject:callBackResult.userId forKey:@"userid"];
            [dict setObject:callBackResult.nickName forKey:@"username"];
            [self sendMessage: dict];
        } else {
            // 登录失败，再次弹出登录窗口
            // 如有必要可以考虑发送失败消息给游戏主程序，由游戏主程序那边来决定是否再次弹出登录窗口
            [[K3IntegratedSDK sharedSDK] login];
        }
    }
}

- (void)paymentCallBack:(NSNotification *)notification {
    // NSLog(@"=> 收到购买回调通知");
    NSDictionary *userinfo = notification.userInfo;
    K3IntegratedSDKCallBackResult *callBackResult = [userinfo objectForKey:k3KIntegratedSDKCallBackResultKey];
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:@"pay_callback" forKey:@"type"];
    if (callBackResult.result == K3IntegratedSDKResultSuccess) {
        [dict setObject:@"" forKey:@"error"];
    } else {
        [dict setObject:@"购买失败或是用户取消了购买" forKey:@"error"];
    }
    // 购买完成，通知游戏主程序
    [self sendMessage: dict];
}

- (void)logoutCallBack: (NSNotification *)notification {
    // NSLog(@"=> 收到SDK注销回调通知");
    // 再次弹出登录窗口
    [[K3IntegratedSDK sharedSDK] login];
}

- (void)closeSDKView: (NSNotification *) notification {
    // NSLog(@"=> 收到关闭SDK页面回调通知");
    UIViewController *viewController = [[[UIApplication sharedApplication] keyWindow] rootViewController];
    if (viewController.presentedViewController) {
        [viewController.presentedViewController dismissViewControllerAnimated:YES completion:nil];
    }
}

@end
