//
//  Webcam.h
//  Unity-iPhone
//
//  Created by yeahoo on 15/9/29.
//
//

#ifndef Webcam_h
#define Webcam_h

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Common.h"

@interface Webcam : UIViewController<UIImagePickerControllerDelegate, UINavigationControllerDelegate>
// @interface Webcam : NSObject

@property (nonatomic, strong) NSString* filepath;
@property (nonatomic, strong) NSString* filename;

// 获取共享实例(单例模式)
+(id) sharedInstance;

-(void) TakePhoto;
-(void) OpenPhotoGallery;

void _TakePhoto(const char* filepath, const char* filename);

void _OpenPhotoGallery(const char* filepath, const char* filename);

@end
#endif /* Webcam_h */
