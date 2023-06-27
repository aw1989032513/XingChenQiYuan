//
//  Speech.h
//  Unity-iPhone
//
//  Created by yeahoo on 15/9/29.
//
//

#ifndef Speech_h
#define Speech_h

#import "iflyMSC/IFlyMSC.h"
#import "ISRDataHelper.h"
#import "Common.h"

@interface Speech : NSObject<IFlySpeechRecognizerDelegate>

// 获取共享实例(单例模式)
+(id) sharedInstance;
// 调用语音识别
-(void) recognize:(NSData*) data;

// 讯飞语音识别对象
@property (nonatomic, strong) IFlySpeechRecognizer *iFlySpeechRecognizer;
// 最后一次的识别结果
@property (nonatomic, strong) NSMutableString *result;

void _SpeechInit();

void _SpeechRecognize(const char **bytes, int size);

@end
#endif
