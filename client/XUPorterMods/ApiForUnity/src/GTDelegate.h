//
//  GTDelegate.h
//  Unity-iPhone
//
//  Created by Hoooosr on 16/3/9.
//
//
#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#if __IPHONE_OS_VERSION_MAX_ALLOWED >= __IPHONE_10_0
#import <UserNotifications/UserNotifications.h>
#endif
#import "GeTuiSdk.h"

#define kGtAppId           @"HrS2eZxjMr96eiw3Xdwgb7"
#define kGtAppKey          @"wDm6ROjPte7eRMWLDAT0UA"
#define kGtAppSecret       @"wDSSysT97B6R1MLnrh5CgA"

@interface GTDelegate : UIResponder <UIApplicationDelegate, GeTuiSdkDelegate>

@property (copy, nonatomic) NSString* gtClientId;

// 获取共享实例(单例模式)
+(id) sharedInstance;

// 启动个推SDK
-(void)startGtSdk:(NSDictionary*)launchOptions;

@end
