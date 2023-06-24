//
//  KKKPlatformInitInfo.h
//  3kwan
//
//  Created by WangMao on 14-7-2.
//  Copyright (c) 2014年 3K玩. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum K_ASSISTIVE_TOUCH_LOCATION{
    K_ASSISTIVE_TOUCH_LOCATION_LEFT_TOP = 1,    //左上
    K_ASSISTIVE_TOUCH_LOCATION_LEFT_MIDDLE,     //左中
    K_ASSISTIVE_TOUCH_LOCATION_LEFT_BOTTOM,     //左下
    K_ASSISTIVE_TOUCH_LOCATION_RIGHT_TOP,       //右上
    K_ASSISTIVE_TOUCH_LOCATION_RIGHT_MIDDLE,    //右中
    K_ASSISTIVE_TOUCH_LOCATION_RIGHT_BOTTOM     //右下
} AssistiveLocation;

@interface KKKPlatformInitInfo : NSObject

/**
 *  渠道id
 *  Note：从v2.1版本开始，这个值必须配置在[NSBundle mainBundle]的3KChannel.plist文件中。
 */
@property (nonatomic,copy)NSString *fromId;

/**
 *  平台分配的游戏id
 */
@property (nonatomic,copy)NSString *gameId;

/**
 *  悬浮窗的初始位置
 *  Default:K_ASSISTIVE_TOUCH_LOCATION_LEFT_TOP
 */
@property (nonatomic)AssistiveLocation assistiveTouchLocation;

/**
 *  悬浮窗是否为横屏模式
 *  Note:如果游戏为竖屏模式，则此处设置为NO，否则对悬浮窗操作将抛出异常；横屏游戏同理，此处应设置为YES
 *  Default:NO
 */
@property (nonatomic)BOOL landscape;

/**
 *  3K玩平台的SDK必须要使用一个UIViewController来展示界面,如果您将nil传入该值，则SDK会使用默认的
 *  ViewController
 *  Default:[[[UIApplication sharedApplication] keyWindow] rootViewController];
 */
@property (nonatomic,retain)UIViewController *viewController;

/**
 *  当前是否为测试模式，默认为NO，测试模式下可以打印调试日志，在正式上线时应改为正式模式
 */
@property (nonatomic,getter = isDebug) BOOL debug;
/**
 *  微信平台分配AppID          v2.2新增
 */
@property (nonatomic, copy)NSString * weixinAppId;

@end
