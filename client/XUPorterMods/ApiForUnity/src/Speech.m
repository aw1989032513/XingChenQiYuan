//
//  Speech.m
//  Unity-iPhone
//
//  Created by yeahoo on 15/9/29.
//
//

#include "Speech.h"

@implementation Speech

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
        NSLog(@"=> 初始化讯飞云服务");
        [IFlySetting showLogcat:NO];
        NSString *initString = [[NSString alloc] initWithFormat:@"appid=%@", @"560ae2e1"];
        [IFlySpeechUtility createUtility:initString];
        self.result = [[NSMutableString alloc] init];
    }
    return self;
}

// 发送消息到Unity中
-(void) sendMessage:(NSDictionary *) dict {
    SendMessage("SpeechProxy", "MessageArrive", dict);
}

// 调用语音识别
-(void) recognize:(NSData*)data {
    // 如果不存在识别器，则马上创建一个
    if(self.iFlySpeechRecognizer == nil){
        self.iFlySpeechRecognizer = [IFlySpeechRecognizer sharedInstance];
        
        // 重置所有设置
        [self.iFlySpeechRecognizer setParameter:@"" forKey:[IFlySpeechConstant PARAMS]];
        
        // 设置听写模式
        [self.iFlySpeechRecognizer setParameter:@"iat" forKey:[IFlySpeechConstant IFLY_DOMAIN]];
        // 设置最长录音时间
        [self.iFlySpeechRecognizer setParameter:@"30000" forKey:[IFlySpeechConstant SPEECH_TIMEOUT]];
        // 设置后端点
        [self.iFlySpeechRecognizer setParameter:@"3000" forKey:[IFlySpeechConstant VAD_EOS]];
        // 设置前端点
        [self.iFlySpeechRecognizer setParameter:@"3000" forKey:[IFlySpeechConstant VAD_BOS]];
        // 网络等待时间
        [self.iFlySpeechRecognizer setParameter:@"20000" forKey:[IFlySpeechConstant NET_TIMEOUT]];
        // 设置采样率，推荐使用16K
        [self.iFlySpeechRecognizer setParameter:@"16000" forKey:[IFlySpeechConstant SAMPLE_RATE]];
        // 设置语言
        [self.iFlySpeechRecognizer setParameter:@"zh_cn" forKey:[IFlySpeechConstant LANGUAGE]];
        // 设置方言(mandarin:普通话)
        [self.iFlySpeechRecognizer setParameter:@"mandarin" forKey:[IFlySpeechConstant ACCENT]];
        // 设置是否返回标点符号
        [self.iFlySpeechRecognizer setParameter:@"1" forKey:[IFlySpeechConstant ASR_PTT]];
        // 设置音频来源为音频流
        [self.iFlySpeechRecognizer setParameter:IFLY_AUDIO_SOURCE_STREAM forKey:@"audio_source"];
        // 设置听写结果格式为json
        [self.iFlySpeechRecognizer setParameter:@"json" forKey:[IFlySpeechConstant RESULT_TYPE]];
        
        self.iFlySpeechRecognizer.delegate = self;
    }
    
    [self.result setString:@""]; // 清空最后一次的识别结果
    
    // 开始识别
    BOOL ret  = [self.iFlySpeechRecognizer startListening];
    if(!ret){
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:@1 forKey:@"errCode"];
        [dict setObject:@"启动语音识别失败" forKey:@"message"];
        [self sendMessage:dict];
        return;
    }
    
    int rtn = [self.iFlySpeechRecognizer writeAudio:data];
    if(!rtn){
        NSLog(@"=> 语音数据写入失败，error code: %d", rtn);
        return;
    }
    [self.iFlySpeechRecognizer stopListening];
}

// 识别结果返回代理
// @param resultArray 识别结果
// @param isLast 表示是否最后一次结果
-(void) onResults: (NSArray *)results isLast:(BOOL) isLast {
    // 拼接json字符
    NSMutableString *jsonString = [[NSMutableString alloc] init];
    NSDictionary *dic = results[0];
    for(NSString *key in dic){
        [jsonString appendFormat:@"%@", key];
    }
    
    // 解析json并添加到最终结果中
    [self.result appendFormat:@"%@", [ISRDataHelper stringFromJson:jsonString]];
    
    // 如果是最后一次结果，表示识别完成，返回结果
    if(isLast){
        NSMutableDictionary *dict = [NSMutableDictionary dictionary];
        [dict setObject:@0 forKey:@"errCode"];
        [dict setObject:self.result forKey:@"message"];
        [self sendMessage:dict];
    }
}

// 识别会话错误返回代理
// @param  error 错误码
-(void) onError: (IFlySpeechError *) error {
    if(error.errorCode == 0) return;
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setValue:@2 forKey:@"errCode"];
    [dict setObject:error.errorDesc forKey:@"message"];
    [self sendMessage:dict];
}

// ----------------------------------------
// 提供给Unity调用的api
// ----------------------------------------

void _SpeechInit(){
    [Speech sharedInstance];
}

// 语音识别
void _SpeechRecognize(const char **bytes, int size){
    NSData *data = [NSData dataWithBytes:bytes length: size];
    
    [[Speech sharedInstance] recognize:data];
}

@end
