//
//  VideoEncoder.h
//  CaptureDemo
//
//  Created by Tian on 2021/5/19.
//

#import <Foundation/Foundation.h>
#import <VideoToolbox/VideoToolbox.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VideoEncoder : NSObject

- (void)encodeSampleBuffer:(CMSampleBufferRef)sampleBuffer;
- (void)endEncode;

@end

NS_ASSUME_NONNULL_END
