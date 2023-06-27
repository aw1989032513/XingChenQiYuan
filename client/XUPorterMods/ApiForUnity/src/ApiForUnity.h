//
//  ApiForUnity.h
//  Unity-iPhone
//
//  Created by yeahoo on 15/9/29.
//
//

#ifndef ApiForUnity_h
#define ApiForUnity_h

#import <Foundation/Foundation.h>

#import "K3SDK.h"
#import "Speech.h"
#import "Webcam.h"
#include "Keyboard.h"

@interface ApiForUnity : NSObject

void _SDK_Init(const char* config);

void _SDK_Login();

void _SDK_Logout();

void _SDK_Pay(const char* payInfo);

void _SDK_ShowAccountCenter();

void _SDK_ShowAssistiveTouch();

void _SDK_HideAssistiveTouch();

void _SDK_StatisticsInfo(const char* info);

const char* _NetworkType();

int _GetScreenBrightness();

void _SetScreenBrightness(int percent);

void _OpenUrlAction(const char* url);

const char* _GetGtClientId();

const char* _GetIDFA();

void _CreateDirectory(const char* path);

bool _IsMuted();

bool _IsIpv6();

void _CopyToClipboard(const char* content);

void _InitShareSDK(const char* info);

void _Share(const char* info, int type);

void _CloseKeyboard();

void _SDK_OpenUrl(const char* url, const char* title);
@end

#endif
