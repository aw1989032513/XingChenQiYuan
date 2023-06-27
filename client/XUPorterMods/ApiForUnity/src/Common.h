// 公共函数

#ifndef Common_h
#define Common_h

#import <Foundation/Foundation.h>

@interface Common : NSObject

void SendMessage(const char *objName, const char *methodName, NSDictionary *dict);

@end

#endif