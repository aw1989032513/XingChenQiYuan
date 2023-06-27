//
//  Webcam.m
//  Unity-iPhone
//
//  Created by yeahoo on 15/9/29.
//
//
#include "Webcam.h"

@implementation Webcam

// 获取共享实例(单例模式)
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
    self = [super init];

    // 添加到Unity的view中
    [UnityGetGLViewController().view addSubview:self.view];

    return self;
}

// view已载入
- (void)viewDidLoad {
    [super viewDidLoad];
    self.navigationItem.title = @"拍照/选取照片";
}

// 发送消息到Unity中
-(void) sendMessage:(NSString *) message {
    UnitySendMessage("WebcamProxy", "MessageArrive", [message UTF8String]);
}

// 拍照
-(void) TakePhoto{
    UIImagePickerControllerSourceType sourceType = UIImagePickerControllerSourceTypeCamera;
    // 判断是否有摄像头
    if(![UIImagePickerController isSourceTypeAvailable:sourceType]) {
        [self sendMessage:@"无法打开照相机"];
        return;
    }

    UIImagePickerController *picker = [[UIImagePickerController alloc] init];
    picker.delegate = self;   // 设置委托
    picker.sourceType = sourceType;
    picker.allowsEditing = YES;
    picker.videoQuality = UIImagePickerControllerQualityTypeLow;
    picker.cameraCaptureMode = UIImagePickerControllerCameraCaptureModePhoto;
    [self presentModalViewController:picker animated:YES];
    [picker release];
}

// 打开相册
-(void) OpenPhotoGallery{
    UIImagePickerController *picker = [[UIImagePickerController alloc] init];

    picker.sourceType = UIImagePickerControllerSourceTypePhotoLibrary;

    // iPhoneX 适配，相册强制横屏
    // picker.modalPresentationStyle = UIModalPresentationCurrentContext;

    picker.delegate = self;
    picker.allowsEditing = YES;
    [self presentModalViewController:picker animated:YES];
    [picker release];
}

// 完成拍照或选择照片
-(void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    // 关闭界面
    [picker dismissModalViewControllerAnimated:YES];

    UIImage *image = [info objectForKey:UIImagePickerControllerEditedImage];
    if(image == nil){
        image = [info objectForKey:UIImagePickerControllerOriginalImage];
    }

    [self performSelector:@selector(saveImage:) withObject:image];
}

// 取消拍照或选择照片
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker{
    [picker dismissModalViewControllerAnimated:YES];
}

// 保存照片
-(void)saveImage:(UIImage *)image {
    NSData *data = UIImageJPEGRepresentation([self compressImage:image toTargetWidth:512], 0.5);

    NSFileManager *fileManager = [NSFileManager defaultManager];
    // 创建目录
    [fileManager createDirectoryAtPath:self.filepath withIntermediateDirectories:YES attributes:nil error:nil];
    // 写入文件
    [fileManager createFileAtPath:[self.filepath stringByAppendingFormat:@"%@", self.filename] contents:data attributes:nil];

    NSString *fullpath = [[NSString alloc] initWithFormat:@"%@%@", self.filepath, self.filename];
    NSURL *url = [NSURL URLWithString:[fullpath stringByAddingPercentEscapesUsingEncoding:NSUTF8StringEncoding]];
    [data writeToURL:url atomically:YES];
    NSLog(@"照片保存路径(fullpath): %@", fullpath);

    [self sendMessage:@"success"];
}

// 图片尺寸格式化
- (UIImage *)compressImage:(UIImage *)sourceImage toTargetWidth:(CGFloat)targetWidth {
    CGSize imageSize = sourceImage.size;

    CGFloat width = imageSize.width;
    CGFloat height = imageSize.height;

    CGFloat targetHeight = (targetWidth / width) * height;

    UIGraphicsBeginImageContext(CGSizeMake(targetWidth, targetHeight));
    [sourceImage drawInRect:CGRectMake(0, 0, targetWidth, targetHeight)];

    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    UIGraphicsEndImageContext();

    return newImage;
}

// ----------------------------------------
// 提供给Unity调用的api
// ----------------------------------------

// 拍照
void _TakePhoto(const char* filepath, const char* filename){
    Webcam *webcam = [Webcam sharedInstance];
    webcam.filepath = [[NSString alloc] initWithUTF8String:filepath];
    webcam.filename = [[NSString alloc] initWithUTF8String:filename];
    [webcam TakePhoto];
}

// 打开相册
void _OpenPhotoGallery(const char* filepath, const char* filename){
    Webcam *webcam = [Webcam sharedInstance];
    webcam.filepath = [[NSString alloc] initWithUTF8String:filepath];
    webcam.filename = [[NSString alloc] initWithUTF8String:filename];
    [webcam OpenPhotoGallery];
}
@end
