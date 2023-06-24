#ifndef AudioRecoder_h
#define AudioRecoder_h

#import <Foundation/Foundation.h>
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface AudioRecorder:NSObject<AVAudioRecorderDelegate, AVAudioSessionDelegate>

@property (nonatomic, strong) AVAudioRecorder *recorder;
@property (nonatomic, strong) NSString *wavFilePath;

// 获取共享实例(单例模式)
+(id)sharedInstance;
-(bool)startRecord;
-(void)stop;

bool _AudioRecorderInit(int sampleRate, const char* filepath);
bool _AudioIsRecording();
bool _AudioRecorderStart();
void _AudioRecorderStop();
void _AudioPlayerSetVolume(int percent);
int _AudioPlayerGetVolume();

@end

#endif