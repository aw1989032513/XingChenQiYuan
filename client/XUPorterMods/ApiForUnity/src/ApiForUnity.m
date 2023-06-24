//
//  ApiForUnity.m
//  Unity-iPhone
//
//  Created by yeahoo on 15/9/29.
//
//

#import "ApiForUnity.h"
#import "Reachability/Reachability.h"
#import <MediaPlayer/MediaPlayer.h>
#import "GTDelegate.h"
#import <Bugly/Bugly.h>
#import "Share.h"
#import "KeyChainStore.h"

@class UnityAppController;

// 沙盒Documents目录路径
#define DOC_PATH ([NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) objectAtIndex:0])
#define  KEY_UUID  @"cn.3kwan.xcqy.com.uuid.sy"

enum {
    ShareTypeWeibo = 1,
    ShareTypeWechatFriend = 2,
    ShareTypeWechatTimeline = 3,
    ShareTypeQQFriend = 4,
    ShareTypeQQZone = 5,
};

@implementation ApiForUnity

bool *isInitBuglyUser = NO;

void _SDK_Init(const char* config){
    NSString *cfg = [[NSString alloc] initWithUTF8String:config];
    [K3SDK sharedInstance];
    [[K3SDK sharedInstance] SdkInit:cfg];

    // 加入icloud同步忽略列表
    addSkipBackupAttributeAtURL([NSURL fileURLWithPath: DOC_PATH]);

    // 隐藏音量显示
    MPVolumeView *volumeView = [[MPVolumeView alloc] initWithFrame:CGRectMake(-200, -200, 1, 1)];
    volumeView.showsRouteButton = NO;
    volumeView.showsVolumeSlider = YES;
    volumeView.hidden = NO;
    volumeView.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleLeftMargin;
    [UnityGetGLViewController().view addSubview:volumeView]; // 添加到Unity的view中
    [volumeView release];
}

// sdk登录
void _SDK_Login(){
    isInitBuglyUser = NO;
    [[K3IntegratedSDK sharedSDK] login];
}

// sdk注销
void _SDK_Logout(){
    [[K3IntegratedSDK sharedSDK] logout];
}

// sdk支付
void _SDK_Pay(const char* payInfo){
    NSString *info = [[NSString alloc] initWithUTF8String:payInfo];
    [[K3SDK sharedInstance] Pay:info];
}

// 显示帐号中心
void _SDK_ShowAccountCenter(){
    [[K3IntegratedSDK sharedSDK] showAccountCenter];
}

// 显示悬浮图标
void _SDK_ShowAssistiveTouch(){
    [[K3IntegratedSDK sharedSDK] showAssistiveTouch];
}

// 隐藏悬浮图标
void _SDK_HideAssistiveTouch(){
    [[K3IntegratedSDK sharedSDK] hideAssistiveTouch];
}

// 统计接口
void _SDK_StatisticsInfo(const char* info){
    NSString *i = [[NSString alloc] initWithUTF8String:info];
    [[K3SDK sharedInstance] StatisticsInfo:i];

    if (!isInitBuglyUser) {
        isInitBuglyUser = YES;
        NSData *data = [[[NSString alloc] initWithUTF8String:info] dataUsingEncoding:NSUTF8StringEncoding];
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
        NSString *name = [[NSString alloc] initWithString:[json objectForKey:@"roleName"]];
//        NSString *lev = [[NSString alloc] initWithString:[json objectForKey:@"roleLevel"]];
        NSString *srvname = [[NSString alloc] initWithString:[json objectForKey:@"serverName"]];
        NSString *resversion = [[NSString alloc] initWithString:[json objectForKey:@"resversion"]];

        //重新设置bugly用户名
        NSString *userId = [[NSString alloc] initWithFormat:@"%@-%@", srvname, name];
        [Bugly setUserIdentifier:userId];
        [Bugly setUserValue:@"ResVersion" forKey:resversion];
        NSLog(@"## set bugly user ##");
    }
}

// 获取渠道号
const char* _SDK_GetChannelNum(){
    NSLog(@">>>>>>>>>>>>>>>>>>>>>渠道号＝%@",[[K3IntegratedSDK sharedSDK] getChannelNum]);
    return [[[K3IntegratedSDK sharedSDK] getChannelNum] UTF8String];
}

// 获取分发ID
int _SDK_GetPlatformId(){
    NSString *path= [[NSBundle mainBundle] pathForResource:@"3KChannel" ofType:@"plist"];
    NSDictionary *dict = [NSDictionary dictionaryWithContentsOfFile:path];
    int val = [[dict objectForKey:@"fromId"] intValue];
    NSLog(@">>>>>>>>>>>>>>>>>>>>>>分发ID＝%d", val);
    return val;
}

// 返回网络类型
const char* _GetNetworkType(){
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    [reachability startNotifier];

    NetworkStatus status = [reachability currentReachabilityStatus];

    if(status == NotReachable) {
        return "None";
    } else if (status == ReachableViaWiFi) {
        return "WIFI";
//    } else if (status == ReachableViaWWAN) {
    } else {
        return "3G";
    }
    return "unknown";
}

// 获取亮度，返加0~100的百分比
int _GetScreenBrightness(){
    return (int)([UIScreen mainScreen].brightness * 100);
}

// 设置亮度，0~100之间的整数表示百分比
void _SetScreenBrightness(int percent){
    if(percent < 0 || percent > 100) return;
    [[UIScreen mainScreen] setBrightness:(float)percent / 100];
}

// 将指定的路径加入icloud同步忽略列表
void addSkipBackupAttributeAtURL(NSURL *URL){
    assert([[NSFileManager defaultManager] fileExistsAtPath: [URL path]]);

    NSError *error = nil;
    BOOL success = [URL setResourceValue: [NSNumber numberWithBool: YES]
                                  forKey: NSURLIsExcludedFromBackupKey error: &error];
    if(!success){
        NSLog(@"Error excluding %@ from backup %@", [URL lastPathComponent], error);
    }
}

// openurl操作
void _OpenUrlAction(const char* url){
    NSString *urlStr = [NSString stringWithFormat:@"%s", url];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urlStr]];
}

// 获取个推client id
const char* _GetGtClientId(){
    return [[[GTDelegate sharedInstance] gtClientId] UTF8String];
}

//获取IDFA
const char* _GetIDFA(){
    NSString *idfaString = [[K3IntegratedSDK sharedSDK] fetchIdfaFromKeyChain];
    if([idfaString  isEqualToString: @"00000000-0000-0000-0000-000000000000"]){
        idfaString = GetUUID();
        NSLog(@"get idfa %@", idfaString);
    }
    NSLog(@"currentIDFA:%@", idfaString);
    return [idfaString UTF8String];
}

//创建目录
void _CreateDirectory(const char* path){
    NSString *createPath = [[NSString alloc] initWithUTF8String:path];
    if(![[NSFileManager defaultManager] fileExistsAtPath:createPath]){
        NSLog(@"创建文件目录%@", createPath);
        [[NSFileManager defaultManager]createDirectoryAtPath:createPath withIntermediateDirectories:YES attributes:nil error:nil];
    }
}

// 是否静音
bool _IsMuted(){
    return false;
}

bool _IsIpv6(){
    Reachability *reachability = [Reachability reachabilityForInternetConnection];
    NSString *type = [reachability innetType];
    if([type  isEqual: @"ipv6"]){
        return true;
    }
    return false;
}

// 复制内容到粘贴板
void _CopyToClipboard(const char* content) {
    NSString *str = [NSString stringWithFormat:@"%s", content];
    UIPasteboard *pasteboard = [UIPasteboard generalPasteboard];
    pasteboard.string = str;
}

// 初始化分享sdk
void _InitShareSDK(const char* info) {
    [[Share shareInstance] initSDK:info];
}

// 分享操作
void _Share(const char* info, int type) {
    switch (type) {
        case ShareTypeWeibo:
            [[Share shareInstance] shareWeibo:info];
            break;
        case ShareTypeWechatFriend:
            [[Share shareInstance] shareWeChatFriend:info];
            break;
        case ShareTypeWechatTimeline:
            [[Share shareInstance] shareWeChatTimeline:info];
            break;
        case ShareTypeQQFriend:
            [[Share shareInstance] shareQQFriend:info];
            break;
        case ShareTypeQQZone:
            [[Share shareInstance] shareQQZone:info];
            break;
        default:
            break;
    }
}

NSString * GetUUID() {
    NSString * strUUID = (NSString *)[KeyChainStore load:KEY_UUID];
    //首次执行该方法时，uuid为空
    if ([strUUID isEqualToString:@""] || !strUUID) {
        //生成一个uuid的方法
        CFUUIDRef uuidRef = CFUUIDCreate(kCFAllocatorDefault);
        strUUID = (NSString *)CFBridgingRelease(CFUUIDCreateString(kCFAllocatorDefault,uuidRef));
        //将该uuid保存到keychain
        [KeyChainStore save:KEY_UUID data:strUUID];
    }
    return strUUID;
}

void _CloseKeyboard() {
    [[KeyboardDelegate Instance] hide];
}

void _SDK_OpenUrl(const char* url, const char* title) {
    [[K3IntegratedSDK sharedSDK] goWebView:[[NSString alloc] initWithUTF8String:url] withTitle: [[NSString alloc] initWithUTF8String:title]];
}

@end
