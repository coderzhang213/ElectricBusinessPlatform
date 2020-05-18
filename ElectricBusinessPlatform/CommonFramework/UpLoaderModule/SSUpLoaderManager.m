//
//  SSUpLoaderManager.m
//  SanCell
//
//  Created by Owen on 2019/6/3.
//  Copyright © 2019 Owen. All rights reserved.
//

#import "SSUpLoaderManager.h"

static NSString *const AccessKey = @"your-key";
static NSString *const SecretKey = @"your-secret";
static NSString *const BucketName = @"your-bucket";
static NSString *const Token = @"your-token";
static NSString *const AliYunHost = @"http://oss-cn-shenzhen.aliyuncs.com/";
static NSString *kTempFolder = @"temp";

@interface SSUpLoaderManager()


@property (nonatomic,strong) OSSClient * o_client;

@property (nonatomic,strong) dispatch_group_t o_group;
@property (nonatomic,strong) dispatch_queue_t o_concurrently_Queue;

//采用 保存文件的方式
@property (nonatomic,strong) NSMutableArray* o_filePathArr;//临时缓存文件路径

@property (nonatomic,strong) NSMutableArray* o_aliFileNameArr;//阿里 文件路径后缀名

@property (assign) int64_t o_totalSent;//总发送进度
@property (assign) int64_t o_totalBytes;//总字节数

@property (nonatomic,assign) BOOL o_isError;

@end

@implementation SSUpLoaderManager

+(instancetype) shareInstance
{
    static SSUpLoaderManager* _upload = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        
        _upload = [[SSUpLoaderManager alloc] init];
    });
    return _upload;
}


+(NSString*) aliUrlWithName:(NSString*)name
{
    NSString* fullStr = [NSString stringWithFormat:@"http://%@.%@/%@",BucketName,[[NSURL URLWithString:AliYunHost] host],name];
    return fullStr;
}

- (void)asyncUploadImages:(NSArray<UIImage *> *)images
                    datas:(NSArray<NSData *> *)datas
                    paths:(NSArray<NSString *> *)paths
                 progress:(void(^)(int64_t byteSent, int64_t bytesTotal, double progress))progress
                 complete:(void(^)(NSArray<NSString *> *names, BOOL isSuccess))complete{
    
    if (images.count <= 0 && datas.count <= 0 && paths.count <= 0) {
        if (complete) {
            dispatch_sync(dispatch_get_main_queue(), ^{
                complete(nil,NO);
            });
        }
        return;
    }
    
    _o_group = dispatch_group_create();
    _o_concurrently_Queue = dispatch_queue_create("com.sanshaoxingqiu.SSUpLoaderManager", DISPATCH_QUEUE_CONCURRENT);
    
    _o_totalSent = 0;
    _o_totalBytes = 0;
    _o_isError = NO;
    
    _o_aliFileNameArr = [NSMutableArray array];
    _o_filePathArr = [NSMutableArray array];
    
    id<OSSCredentialProvider> credential = [[OSSStsTokenCredentialProvider alloc] initWithAccessKeyId:AccessKey secretKeyId:SecretKey securityToken:Token];
    
    _o_client = [[OSSClient alloc] initWithEndpoint:AliYunHost credentialProvider:credential];
    
    
    __weak typeof(self) weakself = self;
    
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        NSArray* newDataArr = images;
        
        
        for (NSInteger i=0; i<newDataArr.count; i++) {
            
            dispatch_group_async(_o_group, _o_concurrently_Queue, ^{
                
                //任务执行
                OSSPutObjectRequest * put = [OSSPutObjectRequest new];
                put.bucketName = BucketName;
                put.objectKey = [weakself.o_aliFileNameArr objectAtIndex:i];
                put.uploadingFileURL = [NSURL fileURLWithPath:[weakself.o_filePathArr objectAtIndex:i]];
                /******* 规避阿里云 使用 NSData的方式 上传（引起内存泄露） *******/
                //                put.uploadingData = [weakself.o_dataArr objectAtIndex:i];
                
                put.uploadProgress = ^(int64_t bytesSent, int64_t totalByteSent, int64_t totalBytesExpectedToSend) {
                    
                    //总已发送 字节数增加
                    weakself.o_totalSent += bytesSent;
                    
                    NSLog(@" %lld, %lld, --%lf",weakself.o_totalSent, weakself.o_totalBytes,(1.0*weakself.o_totalSent)/weakself.o_totalBytes);
                    
                    if (progress) {
                        dispatch_sync(dispatch_get_main_queue(), ^{
                            progress(weakself.o_totalSent,weakself.o_totalBytes,(1.0*weakself.o_totalSent)/weakself.o_totalBytes);
                        });
                    }
                };
                
                OSSTask * putTask = [weakself.o_client putObject:put];
                [putTask waitUntilFinished]; // 阻塞直到上传完成
                put = nil;
                if (!putTask.error) {
                    NSLog(@"upload object success!");
                } else {
                    NSLog(@"upload object failed, error: %@" , putTask.error);
                    weakself.o_isError = YES;
                }
                
            });
        }
        
        //异步等待所有 任务结束 通知
        dispatch_group_notify(_o_group, _o_concurrently_Queue, ^{
            
            [weakself cleanCacheFiles];
            [weakself cleanObjectCache];
            
            if (complete) {
                dispatch_sync(dispatch_get_main_queue(), ^{
                    NSLog(@" Is success ----%@---",!weakself.o_isError?@"YES":@"NO");
                    complete(weakself.o_aliFileNameArr,!weakself.o_isError);
                });
            }
            
        });
        
    });
}




- (void)asyncUploadImages:(NSArray<UIImage *> *)images
                 progress:(void(^)(int64_t byteSent, int64_t bytesTotal, double progress))progress
                 complete:(void(^)(NSArray<NSString *> *names, BOOL isSuccess))complete
{
    [self asyncUploadImages:images datas:nil paths:nil progress:progress complete:complete];
    
}


#pragma mark-

-(void) cleanObjectCache
{
    __weak typeof(self) weakself = self;
    weakself.o_client = nil;
    
    weakself.o_group = nil;
    weakself.o_concurrently_Queue = nil;
}

-(void) cleanCacheFiles
{
    __weak typeof(self) weakself = self;
    dispatch_async(dispatch_get_global_queue(0, 0), ^{
        
        [weakself.o_filePathArr removeAllObjects];
        weakself.o_filePathArr = nil;
        
    });
}


@end
