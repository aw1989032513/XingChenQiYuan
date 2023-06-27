#ifndef _baseapi_h
#define _baseapi_h

// 测试用
int     baseapi_test_add(int a, int b);
// 测试用
const char* baseapi_test_get_string();

// 编码wav文件为speex格式
// @param infile 输入的文件地址
// @param outfile 输出文件地址
// @return 状态 0: 表示成功 非0: 表示失败
int baseapi_speex_encode(const char* infile, const char* outfile);

// 解码用speex编码的文件，输出为pcm格式的文件
// 假设为单声道，16bit的数据
// @param infile 输入的文件地址
// @param outfile 输出文件地址
// @return 状态 0: 表示成功 非0: 表示失败
int baseapi_speex_decode(const char* infile, const char* outfile);

#endif
