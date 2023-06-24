//
//  XGM_API.h
//  XGM_SDK
//
//  Created by Evan JIANG on 15/6/8.
//  Copyright (c) 2015年 ZTWireless Inc. All rights reserved.
//

#import <UIKit/UIKit.h>

#define XGM_SDK_VER   7

typedef void (^ResponseHandler)(NSString *response);

@interface XGM_API : NSObject

+ (NSString*)refreshStatus:(NSString*)appId;
+ (void)asyncRefreshStatus:(NSString*)appId handler:(ResponseHandler)handler;
+ (NSString*)consume:(NSString*)orderIds withInApp:(NSString*)appId;
+ (void)asyncConsume:(NSString*)orderIds withInApp:(NSString*)appId handler:(ResponseHandler)handler;
+ (void)openXGM:(NSString*)appId displayFlag:(int)displayFlag packageId:(int)packageId;
+ (NSString*)getIDFA;

+ (void)init:(NSString *)appId;
+ (void)asyncInit:(NSString*)appId;

@end
