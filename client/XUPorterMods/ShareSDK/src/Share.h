//
//  Share.h
//  Unity-iPhone
//
//  Created by Hoooosr on 16/9/12.
//
//
#import <Foundation/Foundation.h>
#import "Common.h"
#import <ShareSDK/ShareSDK.h>
#import <ShareSDKConnector/ShareSDKConnector.h>
#import <TencentOpenAPI/QQApiInterface.h>
#import <TencentOpenAPI/TencentOAuth.h>
#import "WeiboSDK.h"
#import "WXApi.h"

@interface Share : NSObject

#define SHARESDKAPPKEY @"16dfe5e013918"

+(id)shareInstance;

-(void)initSDK:(const char*) config;

-(void)shareWeChatFriend:(const char*) info;
-(void)shareWeChatTimeline:(const char*) info;
-(void)shareWeibo:(const char*) info;
-(void)shareQQFriend:(const char*) info;
-(void)shareQQZone:(const char*) info;

@end