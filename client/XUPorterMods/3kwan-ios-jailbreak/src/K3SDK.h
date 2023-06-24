#ifndef K3SDK_h
#define K3SDK_h

#import <Foundation/Foundation.h>

#import <K3IntegratedSDK/K3IntegratedSDK.h>
#import <K3IntegratedSDK/K3IntegratedSDKStatistics.h>
#import <K3IntegratedSDK/K3IntegratedSDKCallBackResult.h>

@interface K3SDK : NSObject

+(id) sharedInstance;

-(void) Pay:(NSString*) payInfo;

-(void) SdkInit:(NSString*) config;

-(void) StatisticsInfo:(NSString*) info;

@end

#endif
