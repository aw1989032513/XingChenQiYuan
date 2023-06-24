//
//  Share.m
//  Unity-iPhone
//
//  Created by Hoooosr on 16/9/12.
//
//

#import "Share.h"

@implementation Share

// 分享结果展示BLOCK
SSDKShareStateChangedHandler stateChangedHandler = ^(SSDKResponseState state, NSDictionary *userData, SSDKContentEntity *contentEntity, NSError *error) {
    switch (state) {
        case SSDKResponseStateSuccess:
        {
            NSLog(@"分享成功");
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:@"share_callback" forKey:@"type"];
            [dict setObject:@"success" forKey:@"error"];
            SendMessage("KKKSdkGameObject", "MessageFromSDK", dict);
            break;
        }
        case SSDKResponseStateFail:
        {
            NSLog(@"分享失败");
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:@"share_callback" forKey:@"type"];
            [dict setObject:@"fail" forKey:@"error"];
            SendMessage("KKKSdkGameObject", "MessageFromSDK", dict);
            break;
        }
        case SSDKResponseStateCancel:
        {
            NSLog(@"分享已取消");
            NSMutableDictionary *dict = [NSMutableDictionary dictionary];
            [dict setObject:@"share_callback" forKey:@"type"];
            [dict setObject:@"cancel" forKey:@"error"];
            SendMessage("KKKSdkGameObject", "MessageFromSDK", dict);
            break;
        }
        default:
            NSLog(@"分享未知状态");
            break;
    }
};

static id instance = nil;

+(id)shareInstance{
    static dispatch_once_t once;
    dispatch_once(&once, ^{
        if(instance == nil){
            instance = [[Share alloc] init];
        }
    });
    return instance;
}

-(void)initSDK:(const char*) config {
    NSLog(@"=================== init share here ===================");
    NSData *data = [[[NSString alloc] initWithUTF8String:config] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    
    NSString *shareSDKAppKey= [[NSString alloc] initWithString:[json objectForKey:@"shareSDKAppKey"]];
    
    NSString *weiboAppKey= [[NSString alloc] initWithString:[json objectForKey:@"weiboAppKey"]];
    NSString *weiboAppSecret= [[NSString alloc] initWithString:[json objectForKey:@"weiboAppSecret"]];
    NSString *weiboredirectUri = [[NSString alloc] initWithString:[json objectForKey:@"weiboredirectUri"]];
    
    NSString *wechatAppId= [[NSString alloc] initWithString:[json objectForKey:@"wechatAppId"]];
    NSString *wechatAppSecret= [[NSString alloc] initWithString:[json objectForKey:@"wechatAppSecret"]];
    
    NSString *qqAppId= [[NSString alloc] initWithString:[json objectForKey:@"qqAppId"]];
    NSString *qqAppKey= [[NSString alloc] initWithString:[json objectForKey:@"qqAppKey"]];
    
    [ShareSDK registerApp:shareSDKAppKey
     activePlatforms:@[
                       @(SSDKPlatformTypeWechat),
                       @(SSDKPlatformTypeSinaWeibo),
                       @(SSDKPlatformTypeQQ)
                       ]
     onImport:^(SSDKPlatformType platformType)
     {
         switch (platformType)
         {
             case SSDKPlatformTypeWechat:
                 [ShareSDKConnector connectWeChat:[WXApi class]];
                 break;
             case SSDKPlatformTypeQQ:
                 [ShareSDKConnector connectQQ:[QQApiInterface class] tencentOAuthClass:[TencentOAuth class]];
                 break;
             case SSDKPlatformTypeSinaWeibo:
                 [ShareSDKConnector connectWeibo:[WeiboSDK class]];
                 break;
             default:
                 break;
         }
     }
     onConfiguration:^(SSDKPlatformType platformType, NSMutableDictionary *appInfo)
     {
         switch (platformType)
         {
             case SSDKPlatformTypeSinaWeibo:
                 //设置新浪微博应用信息,其中authType设置为使用SSO＋Web形式授权
                 NSLog(@"=================== init share weibo ===================");
                 [appInfo SSDKSetupSinaWeiboByAppKey:weiboAppKey
                                           appSecret:weiboAppSecret
                                         redirectUri:weiboredirectUri
                                            authType:SSDKAuthTypeBoth];
                 break;
             case SSDKPlatformTypeWechat:
                 NSLog(@"=================== init share wechat ===================");
                 [appInfo SSDKSetupWeChatByAppId:wechatAppId
                                       appSecret:wechatAppSecret];
                 break;
             case SSDKPlatformTypeQQ:
                 NSLog(@"=================== init share qq ===================");
                 [appInfo SSDKSetupQQByAppId:qqAppId
                                      appKey:qqAppKey
                                    authType:SSDKAuthTypeBoth];
                 break;
             default:
                 break;
         }
     }
     ];
}

-(void)shareWeChatFriend:(const char*) info {
    NSLog(@"==== share wechat friend ====");
    NSData *data = [[[NSString alloc] initWithUTF8String:info] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSString *shareContent = [[NSString alloc] initWithString:[json objectForKey:@"shareContent"]];
    NSString *shareTitle = [[NSString alloc] initWithString:[json objectForKey:@"shareTitle"]];
    NSString *shareUrl = [[NSString alloc] initWithString:[json objectForKey:@"shareUrl"]];
    NSString *shareImagePath = [[NSString alloc] initWithString:[json objectForKey:@"shareImagePath"]];
    
    NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
    NSArray* imageArray = @[[UIImage imageNamed:shareImagePath]];
    
    if (imageArray == NULL || shareContent == NULL || shareTitle == NULL || shareUrl == NULL || shareImagePath == NULL) {
        return;
    }
    
    [shareParams SSDKSetupShareParamsByText:shareContent
                                     images:imageArray
                                        url:[NSURL URLWithString:shareUrl]
                                      title:shareTitle
                                       type:SSDKContentTypeWebPage];
    [ShareSDK share:SSDKPlatformSubTypeWechatSession parameters:shareParams onStateChanged:stateChangedHandler];
}

-(void)shareWeChatTimeline:(const char*) info {
    NSLog(@"==== share wechat timeline ====");
    NSData *data = [[[NSString alloc] initWithUTF8String:info] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSString *shareContent = [[NSString alloc] initWithString:[json objectForKey:@"shareContent"]];
    NSString *shareTitle = [[NSString alloc] initWithString:[json objectForKey:@"shareTitle"]];
    NSString *shareUrl = [[NSString alloc] initWithString:[json objectForKey:@"shareUrl"]];
    NSString *shareImagePath = [[NSString alloc] initWithString:[json objectForKey:@"shareImagePath"]];
    
    NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
    NSArray* imageArray = @[[UIImage imageNamed:shareImagePath]];
    [shareParams SSDKSetupShareParamsByText:shareContent
                                     images:imageArray
                                        url:[NSURL URLWithString:shareUrl]
                                      title:shareTitle
                                       type:SSDKContentTypeWebPage];
    [ShareSDK share:SSDKPlatformSubTypeWechatTimeline parameters:shareParams onStateChanged:stateChangedHandler];
}

-(void)shareWeibo:(const char*) info {
    NSLog(@"==== share wechat weibo ====");
    NSData *data = [[[NSString alloc] initWithUTF8String:info] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSString *shareContent = [[NSString alloc] initWithString:[json objectForKey:@"shareContent"]];
    NSString *shareTitle = [[NSString alloc] initWithString:[json objectForKey:@"shareTitle"]];
    NSString *shareUrl = [[NSString alloc] initWithString:[json objectForKey:@"shareUrl"]];
    NSString *shareImagePath = [[NSString alloc] initWithString:[json objectForKey:@"shareImagePath"]];
    
    NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
    NSArray* imageArray = @[[UIImage imageNamed:shareImagePath]];
    [shareParams SSDKSetupShareParamsByText:shareContent
                                     images:imageArray
                                        url:[NSURL URLWithString:shareUrl]
                                      title:shareTitle
                                       type:SSDKContentTypeAuto];
    [shareParams SSDKEnableUseClientShare];
    [ShareSDK share:SSDKPlatformTypeSinaWeibo parameters:shareParams onStateChanged:stateChangedHandler];
}

-(void)shareQQFriend:(const char*) info {
    NSLog(@"==== share wechat qqfriend ====");
    NSData *data = [[[NSString alloc] initWithUTF8String:info] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSString *shareContent = [[NSString alloc] initWithString:[json objectForKey:@"shareContent"]];
    NSString *shareTitle = [[NSString alloc] initWithString:[json objectForKey:@"shareTitle"]];
    NSString *shareUrl = [[NSString alloc] initWithString:[json objectForKey:@"shareUrl"]];
    NSString *shareImagePath = [[NSString alloc] initWithString:[json objectForKey:@"shareImagePath"]];
    
    NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
    NSArray* imageArray = @[[UIImage imageNamed:shareImagePath]];
    [shareParams SSDKSetupShareParamsByText:shareContent
                                     images:imageArray
                                        url:[NSURL URLWithString:shareUrl]
                                      title:shareTitle
                                       type:SSDKContentTypeWebPage];
    [ShareSDK share:SSDKPlatformSubTypeQQFriend parameters:shareParams onStateChanged:stateChangedHandler];
}

-(void)shareQQZone:(const char*) info {
    NSLog(@"==== share wechat qqzone ====");
    NSData *data = [[[NSString alloc] initWithUTF8String:info] dataUsingEncoding:NSUTF8StringEncoding];
    NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
    NSString *shareContent = [[NSString alloc] initWithString:[json objectForKey:@"shareContent"]];
    NSString *shareTitle = [[NSString alloc] initWithString:[json objectForKey:@"shareTitle"]];
    NSString *shareUrl = [[NSString alloc] initWithString:[json objectForKey:@"shareUrl"]];
    NSString *shareImagePath = [[NSString alloc] initWithString:[json objectForKey:@"shareImagePath"]];
    
    NSMutableDictionary *shareParams = [NSMutableDictionary dictionary];
    NSArray* imageArray = @[[UIImage imageNamed:shareImagePath]];
    [shareParams SSDKSetupShareParamsByText:shareContent
                                     images:imageArray
                                        url:[NSURL URLWithString:shareUrl]
                                      title:shareTitle
                                       type:SSDKContentTypeWebPage];
    [ShareSDK share:SSDKPlatformSubTypeQZone parameters:shareParams onStateChanged:stateChangedHandler];
}

@end