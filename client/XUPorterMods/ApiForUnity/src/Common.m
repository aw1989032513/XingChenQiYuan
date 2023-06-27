// 公共函数
#import "Common.h"

@implementation Common

void SendMessage(const char *objName, const char *methodName, NSDictionary *dict){
    NSError *err;
    NSData *data = [NSJSONSerialization dataWithJSONObject:dict options:NSJSONWritingPrettyPrinted error:&err];
    if(!data){
        NSLog(@"=> ApiForUnity.SendMessage出错，传入的数据无法编码成json格式: %@", err);
        return;
    }
    
    NSString *jsonString = [[NSString alloc] initWithData:data encoding:NSUTF8StringEncoding];
    // NSLog(@"=> Register JSON:%@", jsonString);
    UnitySendMessage(objName, methodName, [jsonString UTF8String]);
}

@end