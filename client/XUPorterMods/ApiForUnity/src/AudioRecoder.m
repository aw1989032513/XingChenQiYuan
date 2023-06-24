#include "AudioRecoder.h"

@implementation AudioRecorder

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
    }
    return self;
}

// 获取当前音量
-(int)getVol{
    MPMusicPlayerController* player = [MPMusicPlayerController applicationMusicPlayer];
    return (int)(player.volume * 100);
}

// 获取当前音量
-(void)setVol:(int)percent{
    if(percent < 0 || percent > 100) return;
    
    MPMusicPlayerController* player = [MPMusicPlayerController applicationMusicPlayer];
    player.volume = (float)percent / 100;
}

// 初始化
-(bool)init:(int)sampleRate wavFilePath:(NSString*)path{
    self.wavFilePath = path;
    
    [self setAudioSession]; // 先设置audio session
    
    NSMutableDictionary* setting = [NSMutableDictionary dictionary];
    // 音频格式
    [setting setObject:@(kAudioFormatLinearPCM) forKey:AVFormatIDKey];
    // 采样率
    [setting setObject:@(sampleRate) forKey:AVSampleRateKey];
    // 通道数
    [setting setObject:@1 forKey:AVNumberOfChannelsKey];
    // 每个采样点位数，分为8、16、24、32
    [setting setObject:@16 forKey:AVLinearPCMBitDepthKey];
    // 是否使用大端记录数据
    [setting setObject:@(NO) forKey:AVLinearPCMIsBigEndianKey];
    // 是否使用浮点数采样
    [setting setObject:@(NO) forKey:AVLinearPCMIsFloatKey];
    
    NSURL *url = [NSURL fileURLWithPath:path];
    NSError* error = nil;
    
    self.recorder = [[AVAudioRecorder alloc] initWithURL:url settings:setting error:&error];
    if(!self.recorder){
        NSLog(@"=> 录音设备初始化失败: %@", error);
        return false;
    }
    
    [self.recorder setDelegate:self];
    self.recorder.meteringEnabled = YES;
    
    if(![self.recorder prepareToRecord]) {
        NSLog(@"录音设备未准备");
        return false;
    }
    return true;
}

// 设置AudioSession
-(void)setAudioSession{
    AVAudioSession *audioSession = [AVAudioSession sharedInstance];
    audioSession.delegate = self;
    
    NSError *err = nil;
    [audioSession setCategory:AVAudioSessionCategoryPlayAndRecord withOptions:AVAudioSessionCategoryOptionDefaultToSpeaker error:&err];
    if(err){
        NSLog(@"=> 设置AudioSession时发生异常: %@ %ld %@", [err domain], (long)[err code], [[err userInfo] description]);
//        return;
    }
    err = nil;
    
    BOOL success = [audioSession overrideOutputAudioPort:AVAudioSessionPortOverrideSpeaker error:&err];
    if(!success)
    {
        NSLog(@"error doing outputaudioportoverride - %@", [err localizedDescription]);
    }
    
    
    // 调整音量
    UInt32 doChangeDefault = 1;
    AudioSessionSetProperty(kAudioSessionProperty_OverrideCategoryDefaultToSpeaker, sizeof(doChangeDefault), &doChangeDefault);
    
    [audioSession setActive:YES error:&err];
    if(err){
        NSLog(@"=> 设置AudioSession时发生异常: %@ %ld %@", [err domain], (long)[err code], [[err userInfo] description]);
        return;
    }
    
//    查看权限
//    AVAudioSessionRecordPermission res = [audioSession recordPermission];
//    if (res == AVAudioSessionRecordPermissionDenied){
//        NSLog(@"AVAudioSessionRecordPermissionDenied");
//    } else if (res == AVAudioSessionRecordPermissionGranted) {
//        NSLog(@"AVAudioSessionRecordPermissionGranted");
//    } else if (res == AVAudioSessionRecordPermissionUndetermined) {
//        NSLog(@"AVAudioSessionRecordPermissionUndetermined");
//    }
}

// 录音前。把音频的会话模式设置为录音模式
-(void)beforeRecord{
    NSError *err = nil;
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryRecord withOptions:AVAudioSessionCategoryOptionDefaultToSpeaker error:&err];
    if(err){
//        NSLog(@"=> before1设置AudioSession时发生异常: %@ %ld %@", [err domain], (long)[err code], [[err userInfo] description]);
//        return;
    }
    err = nil;
    [[AVAudioSession sharedInstance] setActive:YES error:&err];
    if(err){
//        NSLog(@"=> before2设置AudioSession时发生异常: %@ %ld %@", [err domain], (long)[err code], [[err userInfo] description]);
//        return;
    }
    err = nil;
}

// 录音后。把音频的会话模式设置为铃声模式
-(void)afterRecord{
    NSError *err = nil;
    [[AVAudioSession sharedInstance] setCategory:AVAudioSessionCategoryAmbient withOptions:AVAudioSessionCategoryOptionDefaultToSpeaker error:&err];
    if(err){
//        NSLog(@"=> after1设置AudioSession时发生异常: %@ %ld %@", [err domain], (long)[err code], [[err userInfo] description]);
//        return;
    }
    err = nil;
    [[AVAudioSession sharedInstance] setActive:YES error:&err];
    if(err){
//        NSLog(@"=> after2设置AudioSession时发生异常: %@ %ld %@", [err domain], (long)[err code], [[err userInfo] description]);
//        return;
    }
    err = nil;
}

// 开始录音
-(bool)startRecord{
    if(self.recorder.recording){
        NSLog(@"=> 录音设备被占用");
        return false;
    }
    
    if([self.recorder prepareToRecord]){
        NSLog(@"录音设备准备好");
    } else{
        NSLog(@"没准备好，fuck");
    }
    
//    [self beforeRecord];
    if(![self.recorder record]){
        NSLog(@"=> 录音失败");
//        [self afterRecord];
        return false;
    }
    return true;
}

// 停止录音
-(void)stop{
    if(!self.recorder.recording){
        return;
    }
    
    [self.recorder stop];
//    [self afterRecord];
    return;
}

// 是否在录音中
-(bool)isRecording{
    return self.recorder.recording;
}

// 录音完成回调
-(void)audioRecorderDidFinishRecording:(AVAudioRecorder *)recorder successfully:(BOOL)flag{
    //     NSLog(@"=> 录音完成");
}

// 录音编码错误回调
- (void)audioRecorderEncodeErrorDidOccur:(AVAudioRecorder *)recorder error:(NSError *)error{
    NSLog(@"=> 录音编码错误: %@", error);
}

-(void)beginInterruption {
}

-(void)endInterruptionWithFlags:(NSUInteger)flags {
}

// ----------------------------------------
// 提供给Unity调用的api
// ----------------------------------------
bool _AudioRecorderInit(int sampleRate, const char* filepath){
    NSLog(@"=> 正在初始化AudioRecorder: %d %s", sampleRate, filepath);
    NSString *path = [NSString stringWithUTF8String:filepath];
    AudioRecorder *recorder = [AudioRecorder sharedInstance];
    return [recorder init:sampleRate wavFilePath:path];
}

bool _AudioRecorderIsRecording(){
    return [[AudioRecorder sharedInstance] isRecording];
}

bool _AudioRecorderStart(){
    return [[AudioRecorder sharedInstance] startRecord];
}

void _AudioRecorderStop(){
    [[AudioRecorder sharedInstance] stop];
}

void _AudioPlayerSetVolume(int percent){
    [[AudioRecorder sharedInstance] setVol:percent];
}

int _AudioPlayerGetVolume(){
    return [[AudioRecorder sharedInstance] getVol];
}

@end

