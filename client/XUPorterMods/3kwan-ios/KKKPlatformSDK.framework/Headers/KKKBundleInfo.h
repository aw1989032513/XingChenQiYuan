//
//  KKKBundleInfo.h
//  KKKWANSDK2017
//
//  Created by caf on 2017/1/10.
//  Copyright © 2017年 kkkwan. All rights reserved.
//

#import <Foundation/Foundation.h>

//bundleInfo 存放一些cp可以设置参数。


typedef enum K_ASSISTIVE_TOUCH_LOCATION{
    K_ASSISTIVE_TOUCH_LOCATION_LEFT_BOTTOM = 0,     //左下
    K_ASSISTIVE_TOUCH_LOCATION_LEFT_MIDDLE,     //左中
    K_ASSISTIVE_TOUCH_LOCATION_LEFT_TOP ,    //左上
    
    K_ASSISTIVE_TOUCH_LOCATION_RIGHT_BOTTOM,     //右下
    K_ASSISTIVE_TOUCH_LOCATION_RIGHT_MIDDLE,    //右中
    K_ASSISTIVE_TOUCH_LOCATION_RIGHT_TOP,       //右上
    
    
} KKKAssistiveLocation;

@interface KKKBundleInfo : NSObject
@property (nonatomic ) NSInteger from_id;
@property (nonatomic ) NSInteger game_id;

@property (nonatomic ) BOOL initShowAssitiveTouch;
@property (nonatomic ) KKKAssistiveLocation kaLocation;

// sdk 版本号
@property (nonatomic , readonly, copy) NSString *version;

+ (instancetype) shareCurrentBundleInfo;
@end
